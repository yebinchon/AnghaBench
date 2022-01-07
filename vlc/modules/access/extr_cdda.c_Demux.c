
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_11__ {scalar_t__ position; scalar_t__ length; unsigned int start; int pts; int es; int vcddev; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_12__ {int i_nb_samples; int i_buffer; int i_pts; int i_dts; int p_buffer; } ;
typedef TYPE_3__ block_t ;


 unsigned int CDDA_BLOCKS_ONCE ;
 unsigned int CDDA_DATA_SIZE ;
 int CDDA_TYPE ;
 int VLC_DEMUXER_EOF ;
 int VLC_DEMUXER_SUCCESS ;
 int VLC_OBJECT (TYPE_1__*) ;
 TYPE_3__* block_Alloc (unsigned int) ;
 int block_Release (TYPE_3__*) ;
 int date_Get (int *) ;
 int date_Increment (int *,int) ;
 int es_out_Send (int ,int ,TYPE_3__*) ;
 int es_out_SetPCR (int ,int ) ;
 scalar_t__ ioctl_ReadSectors (int ,int ,unsigned int,int ,unsigned int,int ) ;
 int msg_Err (TYPE_1__*,char*,unsigned int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int Demux(demux_t *demux)
{
    demux_sys_t *sys = demux->p_sys;
    unsigned count = CDDA_BLOCKS_ONCE;

    if (sys->position >= sys->length)
        return VLC_DEMUXER_EOF;

    if (sys->position + count >= sys->length)
        count = sys->length - sys->position;

    block_t *block = block_Alloc(count * CDDA_DATA_SIZE);
    if (unlikely(block == ((void*)0)))
        return VLC_DEMUXER_EOF;

    if (ioctl_ReadSectors(VLC_OBJECT(demux), sys->vcddev,
                          sys->start + sys->position,
                          block->p_buffer, count, CDDA_TYPE) < 0)
    {
        msg_Err(demux, "cannot read sector %u", sys->position);
        block_Release(block);


        sys->position++;
        return VLC_DEMUXER_SUCCESS;
    }

    sys->position += count;

    block->i_nb_samples = block->i_buffer / 4;
    block->i_dts = block->i_pts = date_Get(&sys->pts);
    date_Increment(&sys->pts, block->i_nb_samples);

    es_out_Send(demux->out, sys->es, block);
    es_out_SetPCR(demux->out, date_Get(&sys->pts));
    return VLC_DEMUXER_SUCCESS;
}
