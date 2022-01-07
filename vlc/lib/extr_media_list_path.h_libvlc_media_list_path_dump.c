
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* libvlc_media_list_path_t ;


 int printf (char*,...) ;

__attribute__((used)) static inline void libvlc_media_list_path_dump( const libvlc_media_list_path_t path )
{
    if(!path)
    {
        printf("NULL path\n");
        return;
    }

    for(int i = 0; path[i] != -1; i++)
        printf("%s%d", i > 0 ? "/" : "", path[i]);
    printf("\n");
}
