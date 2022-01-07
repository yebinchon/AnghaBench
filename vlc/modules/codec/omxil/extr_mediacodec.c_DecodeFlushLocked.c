
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_9__ {scalar_t__ (* flush ) (TYPE_3__*) ;} ;
struct TYPE_8__ {int b_input_dequeued; int b_flush_out; int b_output_ready; int lock; int dec_cond; int b_aborted; int cond; TYPE_3__ api; int (* pf_on_flush ) (TYPE_1__*) ;scalar_t__ i_csd_send; scalar_t__ i_preroll_end; } ;
typedef TYPE_2__ decoder_sys_t ;


 int AbortDecoderLocked (TYPE_1__*) ;
 scalar_t__ VLC_SUCCESS ;
 int stub1 (TYPE_1__*) ;
 scalar_t__ stub2 (TYPE_3__*) ;
 int vlc_cond_broadcast (int *) ;
 int vlc_cond_wait (int *,int *) ;

__attribute__((used)) static void DecodeFlushLocked(decoder_t *p_dec)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    bool b_had_input = p_sys->b_input_dequeued;

    p_sys->b_input_dequeued = 0;
    p_sys->b_flush_out = 1;
    p_sys->i_preroll_end = 0;
    p_sys->b_output_ready = 0;

    p_sys->i_csd_send = 0;

    p_sys->pf_on_flush(p_dec);

    if (b_had_input && p_sys->api.flush(&p_sys->api) != VLC_SUCCESS)
    {
        AbortDecoderLocked(p_dec);
        return;
    }

    vlc_cond_broadcast(&p_sys->cond);

    while (!p_sys->b_aborted && p_sys->b_flush_out)
        vlc_cond_wait(&p_sys->dec_cond, &p_sys->lock);
}
