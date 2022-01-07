
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_9__ {size_t avail_out; scalar_t__ avail_in; int next_in; void* next_out; } ;
struct TYPE_8__ {int eof; int buffer; TYPE_5__ zstream; } ;
typedef TYPE_2__ stream_sys_t ;
typedef int ssize_t ;






 int Z_SYNC_FLUSH ;
 int inflate (TYPE_5__*,int ) ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int msg_Err (TYPE_1__*,char*,...) ;
 scalar_t__ unlikely (int) ;
 int vlc_stream_Read (int ,int,int) ;

__attribute__((used)) static ssize_t Read(stream_t *stream, void *buf, size_t buflen)
{
    stream_sys_t *sys = stream->p_sys;
    ssize_t val;

    if (sys->eof || unlikely(buflen == 0))
        return 0;

    sys->zstream.next_out = buf;
    sys->zstream.avail_out = buflen;

    if (sys->zstream.avail_in == 0)
        sys->zstream.next_in = sys->buffer;

    val = (sys->buffer + sizeof (sys->buffer))
        - (sys->zstream.next_in + sys->zstream.avail_in);

    if (val > 0)
    {
        val = vlc_stream_Read(stream->s,
                          sys->zstream.next_in + sys->zstream.avail_in, val);
        if (val >= 0)
            sys->zstream.avail_in += val;
    }

    if (sys->zstream.avail_in == 0)
    {
        msg_Err(stream, "unexpected end of stream");
        return 0;
    }

    val = inflate(&sys->zstream, Z_SYNC_FLUSH);
    switch (val)
    {
        case 128:
            msg_Dbg(stream, "end of stream");
            sys->eof = 1;

        case 129:
            return buflen - sys->zstream.avail_out;
        case 130:
            msg_Err(stream, "corrupt stream");
            sys->eof = 1;
            return -1;
        case 131:
            if (sys->zstream.next_in == sys->buffer)
                break;

            memmove(sys->buffer, sys->zstream.next_in, sys->zstream.avail_in);
            sys->zstream.next_in = sys->buffer;
            return Read(stream, buf, buflen);
    }

    msg_Err(stream, "unhandled decompression error (%zd)", val);
    return -1;
}
