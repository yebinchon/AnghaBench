
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int pa_stream ;
struct TYPE_10__ {size_t i_buffer; size_t p_buffer; } ;
typedef TYPE_1__ block_t ;
struct TYPE_11__ {TYPE_3__* sys; } ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_12__ {int mainloop; int context; int last_date; int * stream; } ;
typedef TYPE_3__ aout_sys_t ;


 int PA_SEEK_RELATIVE ;
 int block_Release (TYPE_1__*) ;
 int memcpy (void*,size_t,size_t) ;
 int msg_Err (TYPE_2__*,char*) ;
 int pa_operation_unref (int ) ;
 scalar_t__ pa_stream_begin_write (int *,void**,size_t*) ;
 int pa_stream_flush (int *,int *,int *) ;
 scalar_t__ pa_stream_is_corked (int *) ;
 scalar_t__ pa_stream_write (int *,void*,size_t,int *,int ,int ) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 int stream_start (int *,TYPE_2__*,int ) ;
 int vlc_pa_error (TYPE_2__*,char*,int ) ;

__attribute__((used)) static void Play(audio_output_t *aout, block_t *block, vlc_tick_t date)
{
    aout_sys_t *sys = aout->sys;
    pa_stream *s = sys->stream;







    pa_threaded_mainloop_lock(sys->mainloop);

    sys->last_date = date;

    if (pa_stream_is_corked(s) > 0)
        stream_start(s, aout, date);
    while (block->i_buffer > 0)
    {
        void *ptr;
        size_t len = block->i_buffer;

        if (pa_stream_begin_write(s, &ptr, &len))
            vlc_pa_error(aout, "cannot begin write", sys->context);

        memcpy(ptr, block->p_buffer, len);
        block->p_buffer += len;
        block->i_buffer -= len;

        if (pa_stream_write(s, ptr, len, ((void*)0), 0, PA_SEEK_RELATIVE) < 0)
            vlc_pa_error(aout, "cannot write", sys->context);
    }

    block_Release(block);

    pa_threaded_mainloop_unlock(sys->mainloop);
}
