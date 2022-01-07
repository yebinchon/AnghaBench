
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_css_term_t ;
struct TYPE_3__ {int i_features; int i_outline_alpha; int i_outline_color; } ;
typedef TYPE_1__ text_style_t ;


 int Color (int ,int *,int *,int *,int ,int ) ;
 int STYLE_HAS_OUTLINE_ALPHA ;
 int STYLE_HAS_OUTLINE_COLOR ;

__attribute__((used)) static void OutlineColor( vlc_css_term_t term, text_style_t *p_style )
{
    Color( term, &p_style->i_outline_color, &p_style->i_outline_alpha,
           &p_style->i_features, STYLE_HAS_OUTLINE_COLOR, STYLE_HAS_OUTLINE_ALPHA );
}
