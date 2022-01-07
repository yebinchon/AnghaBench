
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VLC_UNUSED (void*) ;
 int input_item_Release (void*) ;

__attribute__((used)) static void clear_input_item( void* p_item, void* p_obj )
{
    VLC_UNUSED( p_obj );
    input_item_Release( p_item );
}
