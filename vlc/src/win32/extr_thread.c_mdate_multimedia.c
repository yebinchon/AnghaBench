
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_3__ {int (* timeGetTime ) () ;} ;
struct TYPE_4__ {TYPE_1__ multimedia; } ;
typedef int DWORD ;


 int CLOCK_FREQ ;
 int VLC_TICK_FROM_MS (int ) ;
 TYPE_2__ clk ;
 int static_assert (int,char*) ;
 int stub1 () ;

__attribute__((used)) static vlc_tick_t mdate_multimedia (void)
{
    DWORD ts = clk.multimedia.timeGetTime ();


    static_assert ((CLOCK_FREQ % 1000) == 0, "Broken frequencies ratio");
    return VLC_TICK_FROM_MS( ts );
}
