
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int p_face; int i_index; int psz_fontfile; } ;
typedef TYPE_1__ vlc_font_t ;
struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_9__ {int p_default_style; } ;
typedef TYPE_3__ filter_sys_t ;
typedef int FT_Face ;


 int LoadFace (TYPE_2__*,int ,int ,int ) ;

FT_Face GetFace( filter_t *p_filter, vlc_font_t *p_font )
{
    filter_sys_t *p_sys = p_filter->p_sys;

    if( p_font->p_face )
        return p_font->p_face;

    p_font->p_face = LoadFace( p_filter, p_font->psz_fontfile, p_font->i_index,
                               p_sys->p_default_style );

    return p_font->p_face;
}
