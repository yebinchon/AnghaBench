
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_list_t ;
typedef int libvlc_media_list_path_t ;


 int free (int ) ;
 int libvlc_media_list_count (int *) ;
 int libvlc_media_list_path_copy_by_appending (int ,int) ;
 int libvlc_media_list_release (int *) ;
 int * libvlc_media_list_sublist_at_path (int *,int ) ;

__attribute__((used)) static libvlc_media_list_path_t
find_last_item( libvlc_media_list_t * p_mlist, libvlc_media_list_path_t current_item )
{
    libvlc_media_list_t * p_sublist = libvlc_media_list_sublist_at_path(p_mlist, current_item);
    libvlc_media_list_path_t last_item_path = current_item;

    if(p_sublist)
    {
        int i_count = libvlc_media_list_count(p_sublist);
        if(i_count > 0)
        {

            last_item_path = libvlc_media_list_path_copy_by_appending(current_item, i_count - 1);
            free(current_item);

            last_item_path = find_last_item(p_mlist, last_item_path);
        }

        libvlc_media_list_release(p_sublist);
    }

    return last_item_path;
}
