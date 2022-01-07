
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_epg_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int * malloc (int) ;
 int vlc_epg_Init (int *,int ,int ) ;

vlc_epg_t *vlc_epg_New( uint32_t i_id, uint16_t i_source_id )
{
    vlc_epg_t *p_epg = malloc( sizeof(*p_epg) );
    if( p_epg )
        vlc_epg_Init( p_epg, i_id, i_source_id );
    return p_epg;
}
