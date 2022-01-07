
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_2__ {int eof; int offset; int peek; } ;
typedef TYPE_1__ stream_priv_t ;
typedef scalar_t__ ssize_t ;


 int assert (int) ;
 scalar_t__ vlc_stream_CopyBlock (int *,void*,size_t) ;
 scalar_t__ vlc_stream_ReadRaw (int *,void*,size_t) ;

ssize_t vlc_stream_ReadPartial(stream_t *s, void *buf, size_t len)
{
    stream_priv_t *priv = (stream_priv_t *)s;
    ssize_t ret;

    ret = vlc_stream_CopyBlock(&priv->peek, buf, len);
    if (ret >= 0)
    {
        priv->offset += ret;
        assert(ret <= (ssize_t)len);
        return ret;
    }

    ret = vlc_stream_ReadRaw(s, buf, len);
    if (ret > 0)
        priv->offset += ret;
    if (ret == 0)
        priv->eof = len != 0;
    assert(ret <= (ssize_t)len);
    return ret;
}
