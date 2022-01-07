
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_8__ {int p_ccs; int packetizer; } ;
typedef TYPE_2__ decoder_sys_t ;


 int DropStoredNAL (TYPE_2__*) ;
 int H264_PPS_ID_MAX ;
 int H264_SPS_ID_MAX ;
 int StorePPS (TYPE_2__*,int,int *,int *) ;
 int StoreSPS (TYPE_2__*,int,int *,int *) ;
 int cc_storage_delete (int ) ;
 int free (TYPE_2__*) ;
 int packetizer_Clean (int *) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;
    int i;

    DropStoredNAL( p_sys );
    for( i = 0; i <= H264_SPS_ID_MAX; i++ )
        StoreSPS( p_sys, i, ((void*)0), ((void*)0) );
    for( i = 0; i <= H264_PPS_ID_MAX; i++ )
        StorePPS( p_sys, i, ((void*)0), ((void*)0) );

    packetizer_Clean( &p_sys->packetizer );

    cc_storage_delete( p_sys->p_ccs );

    free( p_sys );
}
