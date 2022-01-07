
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dvbpsi_t ;
struct TYPE_4__ {struct TYPE_4__* p_next; } ;
typedef TYPE_1__ dvbpsi_psi_section_t ;
typedef int dvbpsi_atsc_ett_t ;


 int ATSC_ETT_Callback (void*,int *) ;
 int * DVBPlague_ETT_Decode (TYPE_1__ const*) ;
 int VLC_UNUSED (int *) ;

__attribute__((used)) static void ATSC_ETT_RawCallback( dvbpsi_t *p_handle, const dvbpsi_psi_section_t* p_section,
                                  void *p_base_pid )
{
    VLC_UNUSED( p_handle );
    for( ; p_section; p_section = p_section->p_next )
    {
        dvbpsi_atsc_ett_t *p_ett = DVBPlague_ETT_Decode( p_section );
        if( p_ett )
            ATSC_ETT_Callback( p_base_pid, p_ett );
    }
}
