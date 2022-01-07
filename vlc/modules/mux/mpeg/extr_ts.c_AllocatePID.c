
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_6__ {int i_pid_video; int i_pid_audio; int i_pid_spu; } ;
typedef TYPE_2__ sout_mux_sys_t ;



 int GetNextFreePID (TYPE_1__*,int) ;



__attribute__((used)) static int AllocatePID( sout_mux_t *p_mux, int i_cat )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    int i_pid;
    int *pi_candidate_pid = ((void*)0);

    switch( i_cat )
    {
    case 128:
        pi_candidate_pid = &p_sys->i_pid_video;
        break;

    case 130:
        pi_candidate_pid = &p_sys->i_pid_audio;
        break;

    case 129:
    default:
        pi_candidate_pid = &p_sys->i_pid_spu;
        break;
    }

    *pi_candidate_pid = GetNextFreePID( p_mux, *pi_candidate_pid );
    i_pid = (*pi_candidate_pid)++;

    return i_pid;
}
