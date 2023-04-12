# SCShareableContent hangs sample

Example project that sometimes(?) hangs when accessing SCSharableContent.current.

The await simply never returns.
Rewriting to SCShareableContent.getWithCompletionHandler {} has the same issue, the completion handler never gets called.

This only happens occasionally. After developing a ScreenCaptureKit app for a while, and thus having started and killed many screen capture sessions.

Rebooting the computer "fixes" the problem.

## Feedback Assistant / Radar

Submitted as feedback to Apple with id: FB12114396

## Authors

[Nonstrict B.V.](https://nonstrict.eu), [Mathijs Kadijk](https://github.com/mac-cain13) & [Tom Lokhorst](https://github.com/tomlokhorst), released under [MIT License](LICENSE.md).
