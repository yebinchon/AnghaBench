
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;
typedef int libvlc_media_list_t ;


 int libvlc_media_list_retain (int *) ;
 int * media_get_subitems (int *,int) ;

libvlc_media_list_t *
libvlc_media_subitems( libvlc_media_t * p_md )
{
    libvlc_media_list_t *p_subitems = media_get_subitems( p_md, 1 );
    if( p_subitems )
        libvlc_media_list_retain( p_subitems );
    return p_subitems;
}
