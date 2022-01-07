
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dvbpsi_t ;


 int ATSC_ATTACH_WITH_FIXED_DECODER (int *,int ,int ,int,void*) ;
 int ATSC_Detach_Dvbpsi_Decoders (int *) ;
 int ATSC_STT_TABLE_ID ;
 int STT ;

bool ATSC_Attach_Dvbpsi_Base_Decoders( dvbpsi_t *p_handle, void *p_base_pid )
{
    if( !ATSC_ATTACH_WITH_FIXED_DECODER( p_handle, STT, ATSC_STT_TABLE_ID, 0x00, p_base_pid ) )
    {
        ATSC_Detach_Dvbpsi_Decoders( p_handle );
        return 0;
    }
    return 1;
}
