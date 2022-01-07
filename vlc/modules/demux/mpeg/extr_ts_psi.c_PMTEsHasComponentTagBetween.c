
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ i_component_tag; } ;
typedef TYPE_1__ dvbpsi_stream_identifier_dr_t ;
typedef int dvbpsi_pmt_es_t ;
typedef int dvbpsi_descriptor_t ;


 int * PMTEsFindDescriptor (int const*,int) ;
 TYPE_1__* dvbpsi_DecodeStreamIdentifierDr (int *) ;

__attribute__((used)) static bool PMTEsHasComponentTagBetween( const dvbpsi_pmt_es_t *p_es,
                                         uint8_t i_low, uint8_t i_high )
{
    dvbpsi_descriptor_t *p_dr = PMTEsFindDescriptor( p_es, 0x52 );
    if( !p_dr )
        return 0;
    dvbpsi_stream_identifier_dr_t *p_si = dvbpsi_DecodeStreamIdentifierDr( p_dr );
    if( !p_si )
        return 0;

    return p_si->i_component_tag >= i_low && p_si->i_component_tag <= i_high;
}
