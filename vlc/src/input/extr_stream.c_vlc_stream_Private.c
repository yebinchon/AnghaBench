
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_2__ {void* private_data; } ;
typedef TYPE_1__ stream_priv_t ;



void *vlc_stream_Private(stream_t *stream)
{
    return ((stream_priv_t *)stream)->private_data;
}
