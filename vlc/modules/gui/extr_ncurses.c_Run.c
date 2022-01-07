
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intf_thread_t ;


 int HandleKey (int *) ;
 int Redraw (int *) ;
 int vlc_assert_unreachable () ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 int vlc_testcancel () ;

__attribute__((used)) static void *Run(void *data)
{
    intf_thread_t *intf = data;

    for (;;) {
        vlc_testcancel();

        int canc = vlc_savecancel();

        Redraw(intf);
        HandleKey(intf);
        vlc_restorecancel(canc);
    }
    vlc_assert_unreachable();
}
