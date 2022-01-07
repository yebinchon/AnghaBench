
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ p_fonts; int psz_name; struct TYPE_10__* p_next; } ;
typedef TYPE_1__ vlc_family_t ;
typedef int uni_char_t ;
struct TYPE_11__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_12__ {TYPE_1__* (* pf_get_family ) (TYPE_2__*,int ) ;} ;
typedef TYPE_3__ filter_sys_t ;
typedef int FT_Face ;


 int FT_Get_Char_Index (int ,int ) ;
 int GetFace (TYPE_2__*,scalar_t__) ;
 TYPE_1__* stub1 (TYPE_2__*,int ) ;

vlc_family_t *SearchFallbacks( filter_t *p_filter, vlc_family_t *p_fallbacks,
                                      uni_char_t codepoint )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    vlc_family_t *p_family = ((void*)0);

    for( vlc_family_t *p_fallback = p_fallbacks; p_fallback;
         p_fallback = p_fallback->p_next )
    {
        if( !p_fallback->p_fonts )
        {
            const vlc_family_t *p_temp =
                    p_sys->pf_get_family( p_filter, p_fallback->psz_name );
            if( !p_temp || !p_temp->p_fonts )
                continue;
            p_fallback->p_fonts = p_temp->p_fonts;
        }

        FT_Face p_face = GetFace( p_filter, p_fallback->p_fonts );
        if( !p_face || !FT_Get_Char_Index( p_face, codepoint ) )
            continue;
        p_family = p_fallback;
        break;
    }

    return p_family;
}
