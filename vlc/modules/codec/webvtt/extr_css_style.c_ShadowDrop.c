
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; int val; } ;
typedef TYPE_1__ vlc_css_term_t ;
struct TYPE_6__ {int i_features; int i_style_flags; int i_shadow_width; } ;
typedef TYPE_2__ text_style_t ;


 int STYLE_HAS_FLAGS ;
 int STYLE_SHADOW ;
 scalar_t__ TYPE_PIXELS ;

__attribute__((used)) static void ShadowDrop( vlc_css_term_t term, text_style_t *p_style )
{
    if( term.type >= TYPE_PIXELS )
    {
        p_style->i_shadow_width = term.val;
        p_style->i_style_flags |= STYLE_SHADOW;
        p_style->i_features |= STYLE_HAS_FLAGS;
    }
}
