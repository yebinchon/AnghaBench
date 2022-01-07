
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;


 int libvlc_media_fetch_local ;
 int media_parse (int *,int,int ,int) ;

void
libvlc_media_parse_async(libvlc_media_t *media)
{
    media_parse( media, 1, libvlc_media_fetch_local, -1 );
}
