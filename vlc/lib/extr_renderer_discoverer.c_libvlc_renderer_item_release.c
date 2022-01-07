
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_renderer_item_t ;
typedef int libvlc_renderer_item_t ;


 int vlc_renderer_item_release (int *) ;

void
libvlc_renderer_item_release(libvlc_renderer_item_t *p_item)
{
    vlc_renderer_item_release( (vlc_renderer_item_t *) p_item );
}
