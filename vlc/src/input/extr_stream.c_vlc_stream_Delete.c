
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_2__ {int (* destroy ) (int *) ;} ;
typedef TYPE_1__ stream_priv_t ;


 int stream_CommonDelete (int *) ;
 int stub1 (int *) ;

void vlc_stream_Delete(stream_t *s)
{
    stream_priv_t *priv = (stream_priv_t *)s;

    priv->destroy(s);
    stream_CommonDelete(s);
}
