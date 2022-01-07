
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_2__ {int eof; } ;
typedef TYPE_1__ stream_priv_t ;



bool vlc_stream_Eof(const stream_t *s)
{
    const stream_priv_t *priv = (const stream_priv_t *)s;

    return priv->eof;
}
