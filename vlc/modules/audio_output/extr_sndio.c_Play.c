
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_7__ {scalar_t__ i_nb_samples; int i_buffer; int p_buffer; } ;
typedef TYPE_1__ block_t ;
struct TYPE_8__ {TYPE_3__* sys; } ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_9__ {int delay; int hdl; } ;
typedef TYPE_3__ aout_sys_t ;


 int block_Release (TYPE_1__*) ;
 int sio_write (int ,int ,int ) ;

__attribute__((used)) static void Play(audio_output_t *aout, block_t *block, vlc_tick_t date)
{
    aout_sys_t *sys = aout->sys;

    sio_write (sys->hdl, block->p_buffer, block->i_buffer);
    sys->delay += block->i_nb_samples;
    block_Release (block);
    (void) date;
}
