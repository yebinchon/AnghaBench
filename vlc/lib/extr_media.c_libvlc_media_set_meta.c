
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t libvlc_meta_t ;
struct TYPE_4__ {int p_input_item; } ;
typedef TYPE_1__ libvlc_media_t ;


 int assert (TYPE_1__*) ;
 int input_item_SetMeta (int ,int ,char const*) ;
 int * libvlc_to_vlc_meta ;

void libvlc_media_set_meta( libvlc_media_t *p_md, libvlc_meta_t e_meta, const char *psz_value )
{
    assert( p_md );
    input_item_SetMeta( p_md->p_input_item, libvlc_to_vlc_meta[e_meta], psz_value );
}
