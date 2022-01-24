#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  MCIDEVICEID ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/  MCI_NOTIFY_ABORTED ; 
 int /*<<< orphan*/  MCI_NOTIFY_SUCCESSFUL ; 
 int /*<<< orphan*/  MCI_NOTIFY_SUPERSEDED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 
 int ok_saved ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(HWND hwnd)
{
    MCIDEVICEID wDeviceID;
    int err;
    char buf[1024];
    FUNC4(buf, 0, sizeof(buf));

    err = FUNC3("open tempfile.wav alias mysound notify type mpegvideo", buf, sizeof(buf), hwnd);
    FUNC5(err==ok_saved,"mci open tempfile.wav returned %s\n", FUNC2(err));
    if(err) {
        FUNC6("Cannot open tempfile.wav for playing (%s), skipping\n", FUNC2(err));
        return;
    }
    FUNC5(!FUNC7(buf,"1"), "mci open deviceId: %s, expected 1\n", buf);
    wDeviceID = FUNC1(buf);
    FUNC5(wDeviceID,"mci open DeviceID: %d\n", wDeviceID);
    FUNC8(hwnd,"open alias notify",MCI_NOTIFY_SUCCESSFUL);

    err = FUNC3("play mysound notify", NULL, 0, hwnd);
    FUNC5(!err,"mci play returned %s\n", FUNC2(err));

    FUNC0(500); /* milliseconds */

    err = FUNC3("pause mysound wait", NULL, 0, hwnd);
    FUNC5(!err,"mci pause wait returned %s\n", FUNC2(err));

    err = FUNC3("status mysound mode notify", buf, sizeof(buf), hwnd);
    FUNC5(!err,"mci status mode returned %s\n", FUNC2(err));
    if(!err) FUNC5(!FUNC7(buf,"paused"), "mci status mode: %s\n", buf);
    FUNC8(hwnd,"play (superseded)",MCI_NOTIFY_SUPERSEDED);
    FUNC8(hwnd,"status",MCI_NOTIFY_SUCCESSFUL);

    err = FUNC3("seek mysound to start wait", NULL, 0, NULL);
    FUNC5(!err,"mci seek to start wait returned %s\n", FUNC2(err));

    err = FUNC3("set mysound time format milliseconds", NULL, 0, NULL);
    FUNC5(!err,"mci time format milliseconds returned %s\n", FUNC2(err));

    err = FUNC3("play mysound to 1500 notify", NULL, 0, hwnd);
    FUNC5(!err,"mci play returned %s\n", FUNC2(err));
    FUNC0(200);
    FUNC8(hwnd,"play",0);

    err = FUNC3("close mysound wait", NULL, 0, NULL);
    FUNC5(!err,"mci close wait returned %s\n", FUNC2(err));
    FUNC8(hwnd,"play (aborted by close)",MCI_NOTIFY_ABORTED);
}