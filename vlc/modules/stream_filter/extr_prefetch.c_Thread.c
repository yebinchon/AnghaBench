
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint_fast64_t ;
typedef size_t uint64_t ;
struct TYPE_8__ {int state; int id; } ;
struct stream_ctrl {TYPE_1__ id_state; int query; struct stream_ctrl* next; } ;
struct TYPE_9__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_10__ {int paused; int error; scalar_t__ stream_offset; scalar_t__ buffer_offset; size_t buffer_length; int eof; size_t seek_threshold; size_t buffer_size; int wait_data; scalar_t__ buffer; int lock; int wait_space; scalar_t__ can_seek; struct stream_ctrl* controls; int interrupt; } ;
typedef TYPE_3__ stream_sys_t ;
typedef scalar_t__ ssize_t ;


 int STREAM_SET_PAUSE_STATE ;
 int ThreadControl (TYPE_2__*,int ,int,...) ;
 scalar_t__ ThreadRead (TYPE_2__*,scalar_t__,size_t) ;
 scalar_t__ ThreadSeek (TYPE_2__*,scalar_t__) ;
 int assert (int) ;
 int free (struct stream_ctrl*) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 int mutex_cleanup_push (int *) ;
 scalar_t__ unlikely (int ) ;
 int vlc_assert_unreachable () ;
 int vlc_cleanup_pop () ;
 int vlc_cond_signal (int *) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_interrupt_set (int ) ;
 int vlc_mutex_lock (int *) ;

__attribute__((used)) static void *Thread(void *data)
{
    stream_t *stream = data;
    stream_sys_t *sys = stream->p_sys;
    bool paused = 0;

    vlc_interrupt_set(sys->interrupt);

    vlc_mutex_lock(&sys->lock);
    mutex_cleanup_push(&sys->lock);
    for (;;)
    {
        struct stream_ctrl *ctrl = sys->controls;

        if (unlikely(ctrl != ((void*)0)))
        {
            sys->controls = ctrl->next;
            ThreadControl(stream, ctrl->query, ctrl->id_state.id,
                          ctrl->id_state.state);
            free(ctrl);
            continue;
        }

        if (sys->paused != paused)
        {
            msg_Dbg(stream, paused ? "resuming" : "pausing");
            paused = sys->paused;
            ThreadControl(stream, STREAM_SET_PAUSE_STATE, paused);
            continue;
        }

        if (paused || sys->error)
        {
            vlc_cond_wait(&sys->wait_space, &sys->lock);
            continue;
        }

        uint_fast64_t stream_offset = sys->stream_offset;

        if (stream_offset < sys->buffer_offset)
        {
            if (ThreadSeek(stream, stream_offset) == 0)
            {
                sys->buffer_offset = stream_offset;
                sys->buffer_length = 0;
                assert(!sys->error);
                sys->eof = 0;
            }
            else
            {
                sys->error = 1;
                vlc_cond_signal(&sys->wait_data);
            }
            continue;
        }

        if (sys->eof)
        {
            vlc_cond_wait(&sys->wait_space, &sys->lock);
            continue;
        }

        assert(stream_offset >= sys->buffer_offset);




        uint64_t history = stream_offset - sys->buffer_offset;






        if (sys->can_seek
         && history >= (sys->buffer_length + sys->seek_threshold))
        {
            if (ThreadSeek(stream, stream_offset) == 0)
            {
                sys->buffer_offset = stream_offset;
                sys->buffer_length = 0;
                assert(!sys->error);
                assert(!sys->eof);
            }
            else
            {




                sys->error = 1;
                vlc_cond_signal(&sys->wait_data);
            }
            continue;
        }

        assert(sys->buffer_size >= sys->buffer_length);

        size_t len = sys->buffer_size - sys->buffer_length;
        if (len == 0)
        {
            if (history == 0)
            {
                vlc_cond_wait(&sys->wait_space, &sys->lock);
                continue;
            }


            len = history > sys->buffer_length ? sys->buffer_length : history;

            sys->buffer_offset += len;
            sys->buffer_length -= len;
        }

        size_t offset = (sys->buffer_offset + sys->buffer_length)
                        % sys->buffer_size;

        if (offset + len > sys->buffer_size)
            len = sys->buffer_size - offset;

        ssize_t val = ThreadRead(stream, sys->buffer + offset, len);
        if (val < 0)
            continue;
        if (val == 0)
        {
            assert(len > 0);
            msg_Dbg(stream, "end of stream");
            sys->eof = 1;
        }

        assert((size_t)val <= len);
        sys->buffer_length += val;
        assert(sys->buffer_length <= sys->buffer_size);


        vlc_cond_signal(&sys->wait_data);
    }
    vlc_assert_unreachable();
    vlc_cleanup_pop();
    return ((void*)0);
}
