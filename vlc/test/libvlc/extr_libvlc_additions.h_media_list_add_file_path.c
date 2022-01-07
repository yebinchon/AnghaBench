
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void libvlc_media_t ;
typedef int libvlc_media_list_t ;
typedef int libvlc_instance_t ;


 int libvlc_media_list_add_media (int *,void*) ;
 void* libvlc_media_new_location (int *,char const*) ;
 int libvlc_media_release (void*) ;

__attribute__((used)) static void* media_list_add_file_path(libvlc_instance_t *vlc, libvlc_media_list_t *ml, const char * file_path)
{
    libvlc_media_t *md = libvlc_media_new_location (vlc, file_path);
    libvlc_media_list_add_media (ml, md);
    libvlc_media_release (md);
    return md;
}
