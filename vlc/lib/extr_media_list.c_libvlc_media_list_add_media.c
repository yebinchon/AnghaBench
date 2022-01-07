
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;
typedef int libvlc_media_list_t ;


 int libvlc_media_list_internal_add_media (int *,int *) ;
 int mlist_is_writable (int *) ;

int libvlc_media_list_add_media( libvlc_media_list_t * p_mlist,
                                 libvlc_media_t * p_md )
{
    if( !mlist_is_writable(p_mlist) )
        return -1;
    libvlc_media_list_internal_add_media( p_mlist, p_md );
    return 0;
}
