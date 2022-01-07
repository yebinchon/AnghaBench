
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {scalar_t__ stream_offset; scalar_t__ buffer_offset; scalar_t__ buffer_length; int eof; } ;
typedef TYPE_2__ stream_sys_t ;



__attribute__((used)) static size_t BufferLevel(const stream_t *stream, bool *eof)
{
    stream_sys_t *sys = stream->p_sys;

    *eof = 0;

    if (sys->stream_offset < sys->buffer_offset)
        return 0;
    if ((sys->stream_offset - sys->buffer_offset) >= sys->buffer_length)
    {
        *eof = sys->eof;
        return 0;
    }
    return sys->buffer_offset + sys->buffer_length - sys->stream_offset;
}
