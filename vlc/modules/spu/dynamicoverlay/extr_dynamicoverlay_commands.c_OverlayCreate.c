
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * p_text; } ;
struct TYPE_6__ {int i_alpha; int b_active; TYPE_1__ data; int p_fontstyle; int format; scalar_t__ i_y; scalar_t__ i_x; } ;
typedef TYPE_2__ overlay_t ;


 int STYLE_NO_DEFAULTS ;
 int VLC_FOURCC (char,char,char,char) ;
 TYPE_2__* calloc (int,int) ;
 int text_style_Create (int ) ;
 int video_format_Setup (int *,int ,int ,int ,int ,int ,int,int) ;

overlay_t *OverlayCreate( void )
{
    overlay_t *p_ovl = calloc( 1, sizeof( overlay_t ) );
    if( p_ovl == ((void*)0) )
       return ((void*)0);

    p_ovl->i_x = p_ovl->i_y = 0;
    p_ovl->i_alpha = 0xFF;
    p_ovl->b_active = 0;
    video_format_Setup( &p_ovl->format, VLC_FOURCC( '\0','\0','\0','\0') , 0, 0,
                        0, 0, 1, 1 );
    p_ovl->p_fontstyle = text_style_Create( STYLE_NO_DEFAULTS );
    p_ovl->data.p_text = ((void*)0);

    return p_ovl;
}
