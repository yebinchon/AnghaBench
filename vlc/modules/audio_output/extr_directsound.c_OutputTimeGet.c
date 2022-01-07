
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {int s; } ;
typedef TYPE_2__ aout_sys_t ;


 scalar_t__ DS_OK ;
 scalar_t__ TimeGet (int *,int *) ;

__attribute__((used)) static int OutputTimeGet( audio_output_t *aout, vlc_tick_t *delay )
{
    aout_sys_t *sys = aout->sys;
    return (TimeGet( &sys->s, delay ) == DS_OK) ? 0 : -1;
}
