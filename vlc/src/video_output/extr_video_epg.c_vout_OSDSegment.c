
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {TYPE_3__* style; } ;
typedef TYPE_1__ text_segment_t ;
struct TYPE_7__ {int i_features; void* i_shadow_alpha; void* i_outline_alpha; int i_font_alpha; int i_font_color; int i_font_size; } ;


 int STYLE_ALPHA_OPAQUE ;
 void* STYLE_ALPHA_TRANSPARENT ;
 int STYLE_HAS_FONT_ALPHA ;
 int STYLE_HAS_FONT_COLOR ;
 int STYLE_HAS_OUTLINE_ALPHA ;
 int STYLE_HAS_SHADOW_ALPHA ;
 int STYLE_NO_DEFAULTS ;
 int __MAX (int,int) ;
 int text_segment_Delete (TYPE_1__*) ;
 TYPE_1__* text_segment_New (char const*) ;
 TYPE_3__* text_style_Create (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static text_segment_t * vout_OSDSegment(const char *psz_text, int size, uint32_t color)
{
    text_segment_t *p_segment = text_segment_New(psz_text);
    if(unlikely(!p_segment))
        return ((void*)0);


    p_segment->style = text_style_Create(STYLE_NO_DEFAULTS);
    if (unlikely(!p_segment->style))
    {
        text_segment_Delete(p_segment);
        return ((void*)0);
    }

    p_segment->style->i_font_size = __MAX(size ,1 );
    p_segment->style->i_font_color = color;
    p_segment->style->i_font_alpha = STYLE_ALPHA_OPAQUE;
    p_segment->style->i_outline_alpha = STYLE_ALPHA_TRANSPARENT;
    p_segment->style->i_shadow_alpha = STYLE_ALPHA_TRANSPARENT;
    p_segment->style->i_features |= STYLE_HAS_FONT_ALPHA | STYLE_HAS_FONT_COLOR |
                                    STYLE_HAS_OUTLINE_ALPHA | STYLE_HAS_SHADOW_ALPHA;

    return p_segment;
}
