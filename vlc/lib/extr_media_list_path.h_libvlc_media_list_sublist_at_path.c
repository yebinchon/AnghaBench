
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;
typedef int libvlc_media_list_t ;
typedef int libvlc_media_list_path_t ;


 int * libvlc_media_list_item_at_path (int *,int const) ;
 int libvlc_media_release (int *) ;
 int * libvlc_media_subitems (int *) ;

__attribute__((used)) static libvlc_media_list_t *
libvlc_media_list_sublist_at_path( libvlc_media_list_t * p_mlist, const libvlc_media_list_path_t path )
{
    libvlc_media_list_t * ret;
    libvlc_media_t * p_md = libvlc_media_list_item_at_path( p_mlist, path );
    if( !p_md )
        return ((void*)0);

    ret = libvlc_media_subitems( p_md );
    libvlc_media_release( p_md );

    return ret;
}
