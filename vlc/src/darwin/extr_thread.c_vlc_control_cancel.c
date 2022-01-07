
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vlc_assert_unreachable () ;

void vlc_control_cancel (int cmd, ...)
{
    (void) cmd;
    vlc_assert_unreachable ();
}
