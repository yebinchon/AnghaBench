#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {scalar_t__ dwReturn; int /*<<< orphan*/  dwItem; } ;
typedef  TYPE_1__ MCI_STATUS_PARMS ;
typedef  int /*<<< orphan*/  MCI_PLAY_PARMS ;
typedef  scalar_t__ MCIERROR ;
typedef  int MCIDEVICEID ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  char* DWORD ;

/* Variables and functions */
 scalar_t__ MCIERR_OUTOFRANGE ; 
 scalar_t__ MCI_MODE_PLAY ; 
 int /*<<< orphan*/  MCI_PLAY ; 
 int /*<<< orphan*/  MCI_STATUS ; 
 int /*<<< orphan*/  MCI_STATUS_ITEM ; 
 int /*<<< orphan*/  MCI_STATUS_MODE ; 
 char* FUNC0 (scalar_t__) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 scalar_t__ ok_saved ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    MCIERROR err;
    MCIDEVICEID wDeviceID;
    MCI_PLAY_PARMS play_parm;
    MCI_STATUS_PARMS status_parm;
    char buf[1024];
    FUNC4(buf, 0, sizeof(buf));

    err = FUNC3("open tempfile.wav type MPEGVideo alias mysound", NULL, 0, NULL);
    FUNC5(err==ok_saved,"mci open tempfile.wav type MPEGVideo returned %s\n", FUNC0(err));
    if(err) {
        FUNC6("Cannot open tempfile.wav type MPEGVideo for playing (%s), skipping\n", FUNC0(err));
        return;
    }

    wDeviceID = FUNC1("mysound");
    FUNC5(wDeviceID == 1, "mciGetDeviceIDA mysound returned %u, expected 1\n", wDeviceID);

    err = FUNC2(wDeviceID, MCI_PLAY, 0, (DWORD_PTR)&play_parm);
    FUNC5(!err,"mciCommand play returned %s\n", FUNC0(err));

    err = FUNC3("status mysound mode", buf, sizeof(buf), NULL);
    FUNC5(!err,"mci status mode returned %s\n", FUNC0(err));
    FUNC5(!FUNC7(buf,"playing"), "mci status mode: %s\n", buf);

    status_parm.dwItem = MCI_STATUS_MODE;
    err = FUNC2(wDeviceID, MCI_STATUS,
                          MCI_STATUS_ITEM,
                          (DWORD_PTR)&status_parm);
    FUNC5(!err,"mciCommand status mode returned %s\n", FUNC0(err));
    FUNC5(status_parm.dwReturn == MCI_MODE_PLAY,
       "mciCommand status mode: %u\n", (DWORD)status_parm.dwReturn);

    err = FUNC3("setaudio mysound volume to 1000", NULL, 0, NULL);
    FUNC5(!err,"mci setaudio volume to 1000 returned %s\n", FUNC0(err));

    err = FUNC3("status mysound mode", buf, sizeof(buf), NULL);
    FUNC5(!err,"mci status mode returned %s\n", FUNC0(err));
    FUNC5(!FUNC7(buf,"playing"), "mci status mode: %s\n", buf);

    err = FUNC3("setaudio mysound volume to 1001", NULL, 0, NULL);
    FUNC5(err==MCIERR_OUTOFRANGE,"mci setaudio volume to 1001 returned %s\n", FUNC0(err));

    err = FUNC3("status mysound mode", buf, sizeof(buf), NULL);
    FUNC5(!err,"mci status mode returned %s\n", FUNC0(err));
    FUNC5(!FUNC7(buf,"playing"), "mci status mode: %s\n", buf);

    err = FUNC3("close mysound", NULL, 0, NULL);
    FUNC5(!err,"mci close returned %s\n", FUNC0(err));
}