F1::
{
MsgBox "F1: Help`nF2: Track DHL`nF3: Track UPS, USPS, and FedEx", "UVT Tracking Script"
}

F3::
{
Send("^c")
Sleep 50
SmallClip := SubStr(A_Clipboard, 1, 2)
SmallerClip := SubStr(A_Clipboard, 1, 1)
if (SmallClip ~= "1Z")
{
	Run("https://wwwapps.ups.com/WebTracking/track?track=yes&trackNums=" A_Clipboard)
}
else if (SmallerClip ~= "9")
{
	Run("https://tools.usps.com/go/TrackConfirmAction?qtc_tLabels1=" A_Clipboard)
}
else
{
	Run("https://fedex.com/fedextrack/?tracknumbers=" A_Clipboard)
}
}

F2::
{
Send("^c")
Sleep 50
Run("https://www.dhl.com/us-en/home/tracking.html?tracking-id=" A_Clipboard "&submit=1")
}