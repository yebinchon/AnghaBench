
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;


 int mdate_selected () ;

vlc_tick_t vlc_tick_now (void)
{
    return mdate_selected ();
}
