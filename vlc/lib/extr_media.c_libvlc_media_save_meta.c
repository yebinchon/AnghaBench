
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {int p_input_item; TYPE_1__* p_libvlc_instance; } ;
typedef TYPE_2__ libvlc_media_t ;
struct TYPE_5__ {int p_libvlc_int; } ;


 int * VLC_OBJECT (int ) ;
 scalar_t__ VLC_SUCCESS ;
 int assert (TYPE_2__*) ;
 scalar_t__ input_item_WriteMeta (int *,int ) ;

int libvlc_media_save_meta( libvlc_media_t *p_md )
{
    assert( p_md );
    vlc_object_t *p_obj = VLC_OBJECT(p_md->p_libvlc_instance->p_libvlc_int);
    return input_item_WriteMeta( p_obj, p_md->p_input_item ) == VLC_SUCCESS;
}
