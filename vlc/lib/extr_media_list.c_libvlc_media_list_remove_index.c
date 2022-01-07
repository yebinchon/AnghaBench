
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_list_t ;


 int libvlc_media_list_internal_remove_index (int *,int) ;
 int mlist_is_writable (int *) ;

int libvlc_media_list_remove_index( libvlc_media_list_t * p_mlist,
                                     int index )
{
    if( !mlist_is_writable(p_mlist) )
        return -1;
    return libvlc_media_list_internal_remove_index( p_mlist, index );
}
