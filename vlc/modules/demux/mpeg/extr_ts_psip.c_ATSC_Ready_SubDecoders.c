
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dvbpsi_t ;


 int ATSC_NewTable_Callback ;
 int dvbpsi_AttachDemux (int *,int ,void*) ;
 int dvbpsi_decoder_present (int *) ;

__attribute__((used)) static bool ATSC_Ready_SubDecoders( dvbpsi_t *p_handle, void *p_cb_pid )
{
    if( !dvbpsi_decoder_present( p_handle ) )
        return dvbpsi_AttachDemux( p_handle, ATSC_NewTable_Callback, p_cb_pid );
    return 1;
}
