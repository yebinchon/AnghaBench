
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int stream_t ;
struct TYPE_2__ {int offset; } ;
typedef TYPE_1__ stream_priv_t ;



uint64_t vlc_stream_Tell(const stream_t *s)
{
    const stream_priv_t *priv = (const stream_priv_t *)s;

    return priv->offset;
}
