
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_continuity_counter; int b_discontinuity; int i_pid; } ;
typedef TYPE_1__ tsmux_stream_t ;
typedef int dvbpsi_t ;
typedef int dvbpsi_psi_section_t ;
typedef int dvbpsi_pat_t ;
typedef int block_t ;
typedef int PEStoTSCallback ;


 int PEStoTS (void*,int ,int *,int ,int *,int *) ;
 int * WritePSISection (int *) ;
 int dvbpsi_DeletePSISections (int *) ;
 int dvbpsi_pat_empty (int *) ;
 int dvbpsi_pat_init (int *,int,int,int) ;
 int dvbpsi_pat_program_add (int *,int const,int ) ;
 int * dvbpsi_pat_sections_generate (int *,int *,int ) ;
 scalar_t__ likely (int *) ;

void BuildPAT( dvbpsi_t *p_dvbpsi,
               void *p_opaque, PEStoTSCallback pf_callback,
               int i_tsid, int i_pat_version_number,
               tsmux_stream_t *p_pat,
               unsigned i_programs, tsmux_stream_t *p_pmt, const int *pi_programs_number )
{
    dvbpsi_pat_t patpsi;
    dvbpsi_psi_section_t *p_section;

    dvbpsi_pat_init( &patpsi, i_tsid, i_pat_version_number, 1 );

    for (unsigned i = 0; i < i_programs; i++ )
        dvbpsi_pat_program_add( &patpsi, pi_programs_number[i], p_pmt[i].i_pid );

    p_section = dvbpsi_pat_sections_generate( p_dvbpsi, &patpsi, 0 );
    if( likely(p_section) )
    {
        block_t *p_block = WritePSISection( p_section );
        if( likely(p_block) )
        {
            PEStoTS( p_opaque, pf_callback, p_block, p_pat->i_pid,
                     &p_pat->b_discontinuity, &p_pat->i_continuity_counter );
        }
        dvbpsi_DeletePSISections( p_section );
    }
    dvbpsi_pat_empty( &patpsi );
}
