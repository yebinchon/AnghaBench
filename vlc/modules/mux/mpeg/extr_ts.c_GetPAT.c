
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_5__ {int i_pmt_program_number; int pmt; int i_num_pmt; int pat; int i_pat_version_number; int i_tsid; int p_dvbpsi; } ;
typedef TYPE_2__ sout_mux_sys_t ;
typedef int sout_buffer_chain_t ;
typedef int PEStoTSCallback ;


 scalar_t__ BufferChainAppend ;
 int BuildPAT (int ,int *,int ,int ,int ,int *,int ,int ,int ) ;

void GetPAT( sout_mux_t *p_mux, sout_buffer_chain_t *c )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;

    BuildPAT( p_sys->p_dvbpsi,
              c, (PEStoTSCallback)BufferChainAppend,
              p_sys->i_tsid, p_sys->i_pat_version_number,
              &p_sys->pat,
              p_sys->i_num_pmt, p_sys->pmt, p_sys->i_pmt_program_number );
}
