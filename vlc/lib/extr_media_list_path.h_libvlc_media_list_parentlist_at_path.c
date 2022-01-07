
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;
typedef int libvlc_media_list_t ;
typedef int* libvlc_media_list_path_t ;


 int * libvlc_media_list_item_at_index (int *,int) ;
 int libvlc_media_list_release (int *) ;
 int libvlc_media_list_retain (int *) ;
 int libvlc_media_release (int *) ;
 int * libvlc_media_subitems (int *) ;

__attribute__((used)) static libvlc_media_list_t *
libvlc_media_list_parentlist_at_path( libvlc_media_list_t * p_mlist, const libvlc_media_list_path_t path )
{
    libvlc_media_list_t * p_current_mlist = p_mlist;

    for( int i = 0; path[i] != -1; i++ )
    {
        if( p_current_mlist != p_mlist )
            libvlc_media_list_release( p_current_mlist );

        if( path[i+1] == -1 )
        {
            libvlc_media_list_retain(p_current_mlist);
            return p_current_mlist;
        }

        libvlc_media_t* p_md = libvlc_media_list_item_at_index( p_current_mlist, path[i] );

        p_current_mlist = libvlc_media_subitems( p_md );
        libvlc_media_release( p_md );

        if( !p_current_mlist )
            return ((void*)0);


    }

    if( p_current_mlist != p_mlist )
        libvlc_media_list_release( p_current_mlist );
    return ((void*)0);
}
