
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_first_program; } ;
typedef TYPE_1__ dvbpsi_pat_t ;
struct TYPE_5__ {int i_pid; struct TYPE_5__* p_next; } ;
typedef TYPE_2__ dvbpsi_pat_program_t ;
typedef int demux_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Warn (int *,char*,int) ;

__attribute__((used)) static int PATCheck( demux_t *p_demux, dvbpsi_pat_t *p_pat )
{

    int i_prev_pid = -1;
    for( dvbpsi_pat_program_t * p_program = p_pat->p_first_program;
         p_program != ((void*)0);
         p_program = p_program->p_next )
    {
        if( p_program->i_pid == i_prev_pid )
        {
            msg_Warn( p_demux, "PAT check failed: duplicate program pid %d", i_prev_pid );
            return VLC_EGENERIC;
        }
        i_prev_pid = p_program->i_pid;
    }
    return VLC_SUCCESS;
}
