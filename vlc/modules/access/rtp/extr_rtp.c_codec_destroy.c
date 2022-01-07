
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int es_out_id_t ;
struct TYPE_3__ {int out; } ;
typedef TYPE_1__ demux_t ;


 int es_out_Del (int ,int *) ;

void codec_destroy (demux_t *demux, void *data)
{
    if (data)
        es_out_Del (demux->out, (es_out_id_t *)data);
}
