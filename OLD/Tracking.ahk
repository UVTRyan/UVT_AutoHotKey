F3::
{
Send("^c")
Sleep(50)
Run("https://wwwapps.ups.com/WebTracking/track?track=yes&trackNums=" A_Clipboard)
}
F2::
{
Send("^c")
Sleep(50)
Run("https://fedex.com/fedextrack/?tracknumbers=" A_Clipboard)
}
F1::
{
Send("^c")
Sleep(50)
Run("https://tools.usps.com/go/TrackConfirmAction?qtc_tLabels1=" A_Clipboard)
}