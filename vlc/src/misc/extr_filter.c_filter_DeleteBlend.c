
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ p_module; } ;
typedef TYPE_1__ vlc_blender_t ;


 int module_unneed (TYPE_1__*,scalar_t__) ;
 int vlc_object_delete (TYPE_1__*) ;

void filter_DeleteBlend( vlc_blender_t *p_blend )
{
    if( p_blend->p_module )
        module_unneed( p_blend, p_blend->p_module );

    vlc_object_delete(p_blend);
}
