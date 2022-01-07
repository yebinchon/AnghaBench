
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_text; } ;
struct TYPE_5__ {int p_fontstyle; TYPE_1__ data; } ;
typedef TYPE_2__ overlay_t ;


 int VLC_SUCCESS ;
 int free (int ) ;
 int text_style_Delete (int ) ;

int OverlayDestroy( overlay_t *p_ovl )
{
    free( p_ovl->data.p_text );
    text_style_Delete( p_ovl->p_fontstyle );

    return VLC_SUCCESS;
}
