
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_decoder; } ;
typedef TYPE_1__ dvbpsi_t ;
typedef int dvbpsi_psi_section_t ;


 int ts_dvbpsi_RawSubDecoderGatherSections (TYPE_1__*,int ,int *) ;

__attribute__((used)) static void ts_dvbpsi_RawDecoderGatherSections( dvbpsi_t *p_dvbpsi,
                                                dvbpsi_psi_section_t * p_section )
{
    ts_dvbpsi_RawSubDecoderGatherSections( p_dvbpsi, p_dvbpsi->p_decoder, p_section );
}
