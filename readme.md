#  Timer with Alerts

The idea of this project is to reproduce the following: in SwiftUI, if you have a view that is getting refreshed quite often, and you try to show alerts on that view, the alerts will pile up if they are not dismissed.

The first commit is simply a counter that is incremented by a Timer. We would have to simply add the logic to put up an alert, maybe every time a number is encountered that's divisible by 10.

