
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
struct v4l2_buffer {int flags; int timestamp; } ;


 int V4L2_BUF_FLAG_TIMESTAMP_MASK ;


 int vlc_tick_from_timeval (int *) ;
 int vlc_tick_now () ;

vlc_tick_t GetBufferPTS (const struct v4l2_buffer *buf)
{
    vlc_tick_t pts;

    switch (buf->flags & V4L2_BUF_FLAG_TIMESTAMP_MASK)
    {
        case 129:
            pts = vlc_tick_from_timeval( &buf->timestamp );
            break;
        case 128:
        default:
            pts = vlc_tick_now ();
            break;
    }
    return pts;
}
