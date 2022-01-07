
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_demux_chained_t ;
typedef int uint16_t ;
struct TYPE_6__ {int p_buffer; } ;
typedef TYPE_1__ block_t ;
struct TYPE_7__ {int pid; } ;
typedef TYPE_2__ BLURAY_STREAM_INFO ;


 TYPE_1__* block_Alloc (int) ;
 int vlc_demux_chained_Send (int *,TYPE_1__*) ;
 int writeTsPacketWDiscontinuity (int ,int const,int *,int ) ;

__attribute__((used)) static void notifyStreamsDiscontinuity( vlc_demux_chained_t *p_parser,
                                        const BLURAY_STREAM_INFO *p_sinfo, size_t i_sinfo )
{
    for( size_t i=0; i< i_sinfo; i++ )
    {
        const uint16_t i_pid = p_sinfo[i].pid;

        block_t *p_block = block_Alloc(192);
        if (!p_block)
            return;

        writeTsPacketWDiscontinuity( p_block->p_buffer, i_pid, ((void*)0), 0 );

        vlc_demux_chained_Send(p_parser, p_block);
    }
}
