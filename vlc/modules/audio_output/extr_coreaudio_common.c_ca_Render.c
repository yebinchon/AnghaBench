
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct aout_sys_common {int b_do_flush; scalar_t__ i_first_render_host_time; scalar_t__ i_out_size; size_t i_underrun_size; TYPE_1__* p_out_chain; TYPE_1__** pp_out_last; int i_render_frames; scalar_t__ i_render_host_time; scalar_t__ b_paused; int flush_sem; } ;
struct TYPE_6__ {size_t i_buffer; size_t p_buffer; struct TYPE_6__* p_next; } ;
typedef TYPE_1__ block_t ;
struct TYPE_7__ {scalar_t__ sys; } ;
typedef TYPE_2__ audio_output_t ;


 int BytesToFrames (struct aout_sys_common*,size_t) ;
 scalar_t__ FramesToBytes (struct aout_sys_common*,int ) ;
 size_t FramesToUs (struct aout_sys_common*,int ) ;
 int HostTimeToTick (scalar_t__) ;
 scalar_t__ TickToHostTime (size_t const) ;
 int UsToFrames (struct aout_sys_common*,int const) ;
 size_t __MIN (size_t,size_t) ;
 int assert (int) ;
 int block_Release (TYPE_1__*) ;
 int ca_ClearOutBuffers (TYPE_2__*) ;
 int lock_lock (struct aout_sys_common*) ;
 int lock_unlock (struct aout_sys_common*) ;
 int memcpy (int *,size_t,size_t) ;
 int memset (int *,int ,scalar_t__ const) ;
 scalar_t__ unlikely (int) ;
 int vlc_sem_post (int *) ;

void
ca_Render(audio_output_t *p_aout, uint32_t i_frames, uint64_t i_host_time,
          uint8_t *p_output, size_t i_requested)
{
    struct aout_sys_common *p_sys = (struct aout_sys_common *) p_aout->sys;

    lock_lock(p_sys);

    if (p_sys->b_do_flush)
    {
        ca_ClearOutBuffers(p_aout);

        p_sys->b_do_flush = 0;
        vlc_sem_post(&p_sys->flush_sem);
    }

    if (p_sys->b_paused || unlikely(p_sys->i_first_render_host_time == 0))
        goto drop;



    if (unlikely(p_sys->i_first_render_host_time > i_host_time ))
    {



        const size_t i_requested_us =
            FramesToUs(p_sys, BytesToFrames(p_sys, i_requested));
        const uint64_t i_requested_host_time = TickToHostTime(i_requested_us);
        if (p_sys->i_first_render_host_time >= i_host_time + i_requested_host_time)
        {

            goto drop;
        }


        const vlc_tick_t i_silence_us =
            HostTimeToTick(p_sys->i_first_render_host_time - i_host_time);

        const uint64_t i_silence_bytes =
            FramesToBytes(p_sys, UsToFrames(p_sys, i_silence_us));
        assert(i_silence_bytes <= i_requested);
        memset(p_output, 0, i_silence_bytes);

        i_requested -= i_silence_bytes;


    }

    p_sys->i_render_host_time = i_host_time;
    p_sys->i_render_frames = i_frames;

    size_t i_copied = 0;
    block_t *p_block = p_sys->p_out_chain;
    while (p_block != ((void*)0) && i_requested != 0)
    {
        size_t i_tocopy = __MIN(i_requested, p_block->i_buffer);
        memcpy(&p_output[i_copied], p_block->p_buffer, i_tocopy);
        i_requested -= i_tocopy;
        i_copied += i_tocopy;
        if (i_tocopy == p_block->i_buffer)
        {
            block_t *p_release = p_block;
            p_block = p_block->p_next;
            block_Release(p_release);
        }
        else
        {
            assert(i_requested == 0);

            p_block->p_buffer += i_tocopy;
            p_block->i_buffer -= i_tocopy;
        }
    }
    p_sys->p_out_chain = p_block;
    if (!p_sys->p_out_chain)
        p_sys->pp_out_last = &p_sys->p_out_chain;
    p_sys->i_out_size -= i_copied;


    if (i_requested > 0)
    {
        assert(p_sys->i_out_size == 0);
        p_sys->i_underrun_size += i_requested;
        memset(&p_output[i_copied], 0, i_requested);
    }

    lock_unlock(p_sys);
    return;

drop:
    memset(p_output, 0, i_requested);
    lock_unlock(p_sys);
}
