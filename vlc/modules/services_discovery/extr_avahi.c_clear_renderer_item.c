
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VLC_UNUSED (void*) ;
 int vlc_renderer_item_release (void*) ;

__attribute__((used)) static void clear_renderer_item( void* p_item, void* p_obj )
{
    VLC_UNUSED( p_obj );
    vlc_renderer_item_release( p_item );
}
