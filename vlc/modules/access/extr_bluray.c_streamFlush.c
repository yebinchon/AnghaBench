
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int seq_end_pes ;
struct TYPE_10__ {int b_flushed; int p_parser; int pl_info_lock; TYPE_2__* p_clip_info; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_11__ {int p_buffer; } ;
typedef TYPE_4__ block_t ;
typedef int bd_stream_type_e ;
struct TYPE_9__ {TYPE_1__* video_streams; } ;
struct TYPE_8__ {int coding_type; } ;







 TYPE_4__* block_Alloc (int) ;
 int vlc_demux_chained_Send (int ,TYPE_4__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int writeTsPacketWDiscontinuity (int ,int,int*,int) ;

__attribute__((used)) static void streamFlush( demux_sys_t *p_sys )
{
    if (p_sys->b_flushed)
        return;

    block_t *p_block = block_Alloc(192);
    if (!p_block)
        return;

    bd_stream_type_e i_coding_type;


    vlc_mutex_lock(&p_sys->pl_info_lock);
    if (p_sys->p_clip_info != ((void*)0))
        i_coding_type = p_sys->p_clip_info->video_streams[0].coding_type;
    else
        i_coding_type = 0;
    vlc_mutex_unlock(&p_sys->pl_info_lock);

    uint8_t i_eos;
    switch( i_coding_type )
    {
        case 130:
        case 129:
        default:
            i_eos = 0xB7;
            break;
        case 128:
        case 131:
            i_eos = 0x0A;
            break;
        case 132:
            i_eos = 0x48;
            break;
    }

    uint8_t seq_end_pes[] = {
        0x00, 0x00, 0x01, 0xe0, 0x00, 0x07, 0x80, 0x00, 0x00,
        0x00, 0x00, 0x01, i_eos,
        0x00,
    };

    writeTsPacketWDiscontinuity( p_block->p_buffer, 0x1011, seq_end_pes, sizeof(seq_end_pes) );

    vlc_demux_chained_Send(p_sys->p_parser, p_block);
    p_sys->b_flushed = 1;
}
