
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_8__ {TYPE_3__* p_pat; } ;
struct TYPE_9__ {int i_nit_pid; TYPE_1__ local; int * p_obj; } ;
typedef TYPE_2__ scan_session_t ;
struct TYPE_10__ {TYPE_4__* p_first_program; scalar_t__ b_current_next; int i_version; int i_ts_id; } ;
typedef TYPE_3__ dvbpsi_pat_t ;
struct TYPE_11__ {scalar_t__ i_number; int i_pid; struct TYPE_11__* p_next; } ;
typedef TYPE_4__ dvbpsi_pat_program_t ;


 int dvbpsi_pat_delete (TYPE_3__*) ;
 int msg_Dbg (int *,char*,scalar_t__,int ,...) ;

__attribute__((used)) static void PATCallBack( scan_session_t *p_session, dvbpsi_pat_t *p_pat )
{
    vlc_object_t *p_obj = p_session->p_obj;


    if( p_session->local.p_pat && p_session->local.p_pat->b_current_next )
    {
        dvbpsi_pat_delete( p_session->local.p_pat );
        p_session->local.p_pat = ((void*)0);
    }
    if( p_session->local.p_pat )
    {
        dvbpsi_pat_delete( p_pat );
        return;
    }

    dvbpsi_pat_program_t *p_program;


    p_session->local.p_pat = p_pat;


    msg_Dbg( p_obj, "new PAT ts_id=%d version=%d current_next=%d",
             p_pat->i_ts_id, p_pat->i_version, p_pat->b_current_next );
    for( p_program = p_pat->p_first_program; p_program != ((void*)0); p_program = p_program->p_next )
    {
        msg_Dbg( p_obj, "  * number=%d pid=%d", p_program->i_number, p_program->i_pid );
        if( p_program->i_number == 0 )
            p_session->i_nit_pid = p_program->i_pid;
    }
}
