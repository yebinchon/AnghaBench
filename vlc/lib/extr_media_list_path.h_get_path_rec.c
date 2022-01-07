
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;
typedef int libvlc_media_list_t ;
typedef int * libvlc_media_list_path_t ;


 int free (int *) ;
 int libvlc_media_list_count (int *) ;
 int * libvlc_media_list_item_at_index (int *,int) ;
 int libvlc_media_list_lock (int *) ;
 int * libvlc_media_list_path_copy_by_appending (int * const,int) ;
 int libvlc_media_list_release (int *) ;
 int libvlc_media_list_unlock (int *) ;
 int libvlc_media_release (int *) ;
 int * libvlc_media_subitems (int *) ;

__attribute__((used)) static libvlc_media_list_path_t
get_path_rec( const libvlc_media_list_path_t path, libvlc_media_list_t * p_current_mlist, libvlc_media_t * p_searched_md )
{
    int count = libvlc_media_list_count( p_current_mlist );

    for( int i = 0; i < count; i++ )
    {
        libvlc_media_t * p_md = libvlc_media_list_item_at_index( p_current_mlist, i );

        if( p_md == p_searched_md )
            return libvlc_media_list_path_copy_by_appending( path, i );

        libvlc_media_list_t * p_subitems = libvlc_media_subitems( p_md );
        libvlc_media_release( p_md );
        if( p_subitems )
        {
            libvlc_media_list_path_t new_path = libvlc_media_list_path_copy_by_appending( path, i );
            libvlc_media_list_lock( p_subitems );
            libvlc_media_list_path_t ret = get_path_rec( new_path, p_subitems, p_searched_md );
            libvlc_media_list_unlock( p_subitems );
            free( new_path );
            libvlc_media_list_release( p_subitems );
            if( ret )
                return ret;
        }
    }
    return ((void*)0);
}
