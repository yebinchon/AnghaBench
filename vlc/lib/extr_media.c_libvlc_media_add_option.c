
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;


 int VLC_INPUT_OPTION_TRUSTED ;
 int VLC_INPUT_OPTION_UNIQUE ;
 int libvlc_media_add_option_flag (int *,char const*,int) ;

void libvlc_media_add_option( libvlc_media_t * p_md,
                              const char * psz_option )
{
    libvlc_media_add_option_flag( p_md, psz_option,
                          VLC_INPUT_OPTION_UNIQUE|VLC_INPUT_OPTION_TRUSTED );
}
