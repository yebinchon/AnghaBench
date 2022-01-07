
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int s; } ;
typedef TYPE_2__ aout_sys_t ;


 int Stop (int *) ;
 int msg_Dbg (TYPE_1__*,char*) ;

__attribute__((used)) static void OutputStop( audio_output_t *aout )
{
    msg_Dbg( aout, "closing audio device" );
    aout_sys_t *sys = aout->sys;
    Stop( &sys->s );
}
