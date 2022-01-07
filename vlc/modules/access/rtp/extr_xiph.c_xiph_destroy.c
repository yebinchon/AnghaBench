
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; TYPE_3__* block; } ;
typedef TYPE_1__ rtp_xiph_t ;
typedef int demux_t ;
struct TYPE_5__ {int i_flags; } ;


 int BLOCK_FLAG_CORRUPTED ;
 int codec_decode (int *,int ,TYPE_3__*) ;
 int codec_destroy (int *,int ) ;
 int free (TYPE_1__*) ;

void xiph_destroy (demux_t *demux, void *data)
{
    rtp_xiph_t *self = data;

    if (!data)
        return;
    if (self->block)
    {
        self->block->i_flags |= BLOCK_FLAG_CORRUPTED;
        codec_decode (demux, self->id, self->block);
    }
    codec_destroy (demux, self->id);
    free (self);
}
