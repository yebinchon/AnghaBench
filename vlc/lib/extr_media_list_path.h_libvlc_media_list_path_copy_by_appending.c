
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* libvlc_media_list_path_t ;


 int libvlc_media_list_path_depth (int* const) ;
 int memcpy (int*,int* const,int) ;
 int* xmalloc (int) ;

__attribute__((used)) static inline libvlc_media_list_path_t libvlc_media_list_path_copy_by_appending( const libvlc_media_list_path_t path, int index )
{
    libvlc_media_list_path_t ret;
    int old_depth = libvlc_media_list_path_depth( path );
    ret = xmalloc( sizeof(int) * (old_depth + 2) );
    memcpy( ret, path, sizeof(int) * old_depth );
    ret[old_depth] = index;
    ret[old_depth+1] = -1;
    return ret;
}
