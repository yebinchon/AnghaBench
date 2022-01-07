
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* libvlc_media_list_path_t ;


 int* xmalloc (int) ;

__attribute__((used)) static inline libvlc_media_list_path_t libvlc_media_list_path_with_root_index( int index )
{
    libvlc_media_list_path_t ret = xmalloc(sizeof(int)*2);
    ret[0] = index;
    ret[1] = -1;
    return ret;
}
