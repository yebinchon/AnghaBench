
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;
typedef int libvlc_instance_t ;


 char* libvlc_media_get_mrl (int *) ;
 int * libvlc_media_new_path (int *,char const*) ;
 int libvlc_media_release (int *) ;

__attribute__((used)) static char *
path_to_mrl(libvlc_instance_t *p_vlc, const char *psz_path)
{
    libvlc_media_t *p_m = libvlc_media_new_path(p_vlc, psz_path);
    char *psz_mrl = libvlc_media_get_mrl(p_m);
    libvlc_media_release(p_m);
    return psz_mrl;
}
