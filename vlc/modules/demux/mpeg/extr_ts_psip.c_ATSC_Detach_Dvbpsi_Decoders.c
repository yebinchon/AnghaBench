
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dvbpsi_t ;


 int dvbpsi_DetachDemux (int *) ;
 scalar_t__ dvbpsi_decoder_present (int *) ;

void ATSC_Detach_Dvbpsi_Decoders( dvbpsi_t *p_handle )
{
    if( dvbpsi_decoder_present( p_handle ) )
        dvbpsi_DetachDemux( p_handle );
}
