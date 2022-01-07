
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_renderer_item_t ;
typedef int libvlc_renderer_item_t ;


 char const* vlc_renderer_item_name (int const*) ;

const char *
libvlc_renderer_item_name( const libvlc_renderer_item_t *p_item )
{
    return vlc_renderer_item_name( (const vlc_renderer_item_t *) p_item );
}
