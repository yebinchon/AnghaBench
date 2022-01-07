
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_7__ {int paused; size_t stream_offset; size_t buffer_size; int lock; int wait_space; scalar_t__ buffer; int wait_data; int interrupt; scalar_t__ error; } ;
typedef TYPE_2__ stream_sys_t ;
typedef size_t ssize_t ;


 size_t BufferLevel (TYPE_1__*,int*) ;
 int memcpy (void*,scalar_t__,size_t) ;
 int msg_Err (TYPE_1__*,char*) ;
 int vlc_cond_signal (int *) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_interrupt_forward_start (int ,void**) ;
 int vlc_interrupt_forward_stop (void**) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static ssize_t Read(stream_t *stream, void *buf, size_t buflen)
{
    stream_sys_t *sys = stream->p_sys;
    size_t copy, offset;
    bool eof;

    if (buflen == 0)
        return buflen;

    vlc_mutex_lock(&sys->lock);
    if (sys->paused)
    {
        msg_Err(stream, "reading while paused (buggy demux?)");
        sys->paused = 0;
        vlc_cond_signal(&sys->wait_space);
    }

    while ((copy = BufferLevel(stream, &eof)) == 0 && !eof)
    {
        void *data[2];

        if (sys->error)
        {
            vlc_mutex_unlock(&sys->lock);
            return 0;
        }

        vlc_interrupt_forward_start(sys->interrupt, data);
        vlc_cond_wait(&sys->wait_data, &sys->lock);
        vlc_interrupt_forward_stop(data);
    }

    offset = sys->stream_offset % sys->buffer_size;
    if (copy > buflen)
        copy = buflen;

    if (offset + copy > sys->buffer_size)
        copy = sys->buffer_size - offset;

    memcpy(buf, sys->buffer + offset, copy);
    sys->stream_offset += copy;
    vlc_cond_signal(&sys->wait_space);
    vlc_mutex_unlock(&sys->lock);
    return copy;
}
