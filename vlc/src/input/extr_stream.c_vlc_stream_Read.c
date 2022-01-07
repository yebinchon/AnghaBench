
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;
typedef scalar_t__ ssize_t ;


 int assert (int) ;
 scalar_t__ vlc_stream_ReadPartial (int *,void*,size_t) ;

ssize_t vlc_stream_Read(stream_t *s, void *buf, size_t len)
{
    size_t copied = 0;

    while (len > 0)
    {
        ssize_t ret = vlc_stream_ReadPartial(s, buf, len);
        if (ret < 0)
            continue;
        if (ret == 0)
            break;

        if (buf != ((void*)0))
            buf = (char *)buf + ret;
        assert(len >= (size_t)ret);
        len -= ret;
        copied += ret;
    }

    return copied;
}
