
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* p_stream; } ;
struct TYPE_10__ {TYPE_1__ u; } ;
typedef TYPE_3__ ts_pid_t ;
typedef int demux_t ;
struct TYPE_11__ {int i_flags; int p_buffer; } ;
typedef TYPE_4__ block_t ;
struct TYPE_9__ {int p_sections_proc; } ;


 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 int BLOCK_FLAG_SCRAMBLED ;
 int VLC_UNUSED (size_t) ;
 int block_Release (TYPE_4__*) ;
 int ts_sections_processor_Push (int ,int ) ;
 int ts_sections_processor_Reset (int ) ;

__attribute__((used)) static bool GatherSectionsData( demux_t *p_demux, ts_pid_t *p_pid, block_t *p_pkt, size_t i_skip )
{
    VLC_UNUSED(i_skip); VLC_UNUSED(p_demux);
    bool b_ret = 0;

    if( p_pkt->i_flags & BLOCK_FLAG_DISCONTINUITY )
    {
        ts_sections_processor_Reset( p_pid->u.p_stream->p_sections_proc );
    }

    if( (p_pkt->i_flags & (BLOCK_FLAG_SCRAMBLED | BLOCK_FLAG_CORRUPTED)) == 0 )
    {
        ts_sections_processor_Push( p_pid->u.p_stream->p_sections_proc, p_pkt->p_buffer );
        b_ret = 1;
    }

    block_Release( p_pkt );

    return b_ret;
}
