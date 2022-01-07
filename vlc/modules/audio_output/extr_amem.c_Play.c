
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_7__ {int i_nb_samples; int p_buffer; } ;
typedef TYPE_1__ block_t ;
struct TYPE_8__ {TYPE_3__* sys; } ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_9__ {int lock; int opaque; int (* play ) (int ,int ,int ,int ) ;} ;
typedef TYPE_3__ aout_sys_t ;


 int block_Release (TYPE_1__*) ;
 int stub1 (int ,int ,int ,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void Play(audio_output_t *aout, block_t *block, vlc_tick_t date)
{
    aout_sys_t *sys = aout->sys;

    vlc_mutex_lock(&sys->lock);
    sys->play(sys->opaque, block->p_buffer, block->i_nb_samples, date);
    vlc_mutex_unlock(&sys->lock);
    block_Release (block);
}
