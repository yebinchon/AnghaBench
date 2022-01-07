
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;
typedef int libvlc_media_list_t ;
typedef int libvlc_media_list_path_t ;


 int free (int ) ;
 int get_path_rec (int ,int *,int *) ;
 int libvlc_media_list_path_empty () ;

__attribute__((used)) static inline libvlc_media_list_path_t libvlc_media_list_path_of_item( libvlc_media_list_t * p_mlist, libvlc_media_t * p_md )
{
    libvlc_media_list_path_t path = libvlc_media_list_path_empty();
    libvlc_media_list_path_t ret;
    ret = get_path_rec( path, p_mlist, p_md );
    free( path );
    return ret;
}
