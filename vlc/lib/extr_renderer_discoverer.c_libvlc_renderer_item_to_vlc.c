
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_renderer_item_t ;
typedef int libvlc_renderer_item_t ;



vlc_renderer_item_t *
libvlc_renderer_item_to_vlc( libvlc_renderer_item_t *p_item )
{
    return (vlc_renderer_item_t*) p_item;
}
