
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_renderer_item_t ;
typedef int libvlc_renderer_item_t ;


 int vlc_renderer_item_flags (int const*) ;

int
libvlc_renderer_item_flags( const libvlc_renderer_item_t *p_item )
{
    return vlc_renderer_item_flags( (const vlc_renderer_item_t *) p_item );
}
