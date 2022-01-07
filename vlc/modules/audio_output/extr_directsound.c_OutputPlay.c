
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int block_t ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int s; } ;
typedef TYPE_2__ aout_sys_t ;


 int Play (int ,int *,int *) ;
 int VLC_OBJECT (TYPE_1__*) ;

__attribute__((used)) static void OutputPlay( audio_output_t *aout, block_t *block, vlc_tick_t date )
{
    aout_sys_t *sys = aout->sys;
    Play( VLC_OBJECT(aout), &sys->s, block );
    (void) date;
}
