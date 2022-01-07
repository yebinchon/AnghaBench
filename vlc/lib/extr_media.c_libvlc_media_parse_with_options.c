
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;
typedef int libvlc_media_parse_flag_t ;


 scalar_t__ VLC_SUCCESS ;
 scalar_t__ media_parse (int *,int,int ,int) ;

int
libvlc_media_parse_with_options( libvlc_media_t *media,
                                 libvlc_media_parse_flag_t parse_flag,
                                 int timeout )
{
    return media_parse( media, 1, parse_flag, timeout ) == VLC_SUCCESS ? 0 : -1;
}
