
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* libvlc_media_list_path_t ;



__attribute__((used)) static inline int libvlc_media_list_path_depth( const libvlc_media_list_path_t path )
{
    int i;
    for( i = 0; path[i] != -1; i++ );
    return i;
}
