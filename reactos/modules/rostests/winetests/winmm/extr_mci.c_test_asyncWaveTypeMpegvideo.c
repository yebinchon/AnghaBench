
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int MCIDEVICEID ;
typedef int * HWND ;


 int MCI_NOTIFY_ABORTED ;
 int MCI_NOTIFY_SUCCESSFUL ;
 int MCI_NOTIFY_SUPERSEDED ;
 int Sleep (int) ;
 int atoi (char*) ;
 char* dbg_mcierr (int) ;
 int mciSendStringA (char*,char*,int,int *) ;
 int memset (char*,int ,int) ;
 int ok (int,char*,char*) ;
 int ok_saved ;
 int skip (char*,char*) ;
 int strcmp (char*,char*) ;
 int test_notification (int *,char*,int ) ;

__attribute__((used)) static void test_asyncWaveTypeMpegvideo(HWND hwnd)
{
    MCIDEVICEID wDeviceID;
    int err;
    char buf[1024];
    memset(buf, 0, sizeof(buf));

    err = mciSendStringA("open tempfile.wav alias mysound notify type mpegvideo", buf, sizeof(buf), hwnd);
    ok(err==ok_saved,"mci open tempfile.wav returned %s\n", dbg_mcierr(err));
    if(err) {
        skip("Cannot open tempfile.wav for playing (%s), skipping\n", dbg_mcierr(err));
        return;
    }
    ok(!strcmp(buf,"1"), "mci open deviceId: %s, expected 1\n", buf);
    wDeviceID = atoi(buf);
    ok(wDeviceID,"mci open DeviceID: %d\n", wDeviceID);
    test_notification(hwnd,"open alias notify",MCI_NOTIFY_SUCCESSFUL);

    err = mciSendStringA("play mysound notify", ((void*)0), 0, hwnd);
    ok(!err,"mci play returned %s\n", dbg_mcierr(err));

    Sleep(500);

    err = mciSendStringA("pause mysound wait", ((void*)0), 0, hwnd);
    ok(!err,"mci pause wait returned %s\n", dbg_mcierr(err));

    err = mciSendStringA("status mysound mode notify", buf, sizeof(buf), hwnd);
    ok(!err,"mci status mode returned %s\n", dbg_mcierr(err));
    if(!err) ok(!strcmp(buf,"paused"), "mci status mode: %s\n", buf);
    test_notification(hwnd,"play (superseded)",MCI_NOTIFY_SUPERSEDED);
    test_notification(hwnd,"status",MCI_NOTIFY_SUCCESSFUL);

    err = mciSendStringA("seek mysound to start wait", ((void*)0), 0, ((void*)0));
    ok(!err,"mci seek to start wait returned %s\n", dbg_mcierr(err));

    err = mciSendStringA("set mysound time format milliseconds", ((void*)0), 0, ((void*)0));
    ok(!err,"mci time format milliseconds returned %s\n", dbg_mcierr(err));

    err = mciSendStringA("play mysound to 1500 notify", ((void*)0), 0, hwnd);
    ok(!err,"mci play returned %s\n", dbg_mcierr(err));
    Sleep(200);
    test_notification(hwnd,"play",0);

    err = mciSendStringA("close mysound wait", ((void*)0), 0, ((void*)0));
    ok(!err,"mci close wait returned %s\n", dbg_mcierr(err));
    test_notification(hwnd,"play (aborted by close)",MCI_NOTIFY_ABORTED);
}
