
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int i_features; int f_font_relsize; int i_style_flags; void* i_font_alpha; void* i_font_color; void* i_background_color; void* i_background_alpha; } ;
typedef TYPE_3__ text_style_t ;
struct TYPE_8__ {scalar_t__ opacity; int color; } ;
struct TYPE_7__ {scalar_t__ opacity; int color; } ;
struct TYPE_10__ {int font; int size; scalar_t__ b_underline; scalar_t__ b_italics; TYPE_2__ foreground; TYPE_1__ background; } ;
typedef TYPE_4__ cea708_pen_style_t ;


 void* CEA708AlphaConvert (scalar_t__) ;
 void* CEA708ColorConvert (int ) ;
 int CEA708_FONTRELSIZE_LARGE ;
 int CEA708_FONTRELSIZE_SMALL ;
 int CEA708_FONTRELSIZE_STANDARD ;
 scalar_t__ CEA708_OPACITY_FLASH ;
 scalar_t__ CEA708_OPACITY_TRANSPARENT ;


 int STYLE_BACKGROUND ;
 int STYLE_BLINK_BACKGROUND ;
 int STYLE_BLINK_FOREGROUND ;
 int STYLE_HAS_BACKGROUND_ALPHA ;
 int STYLE_HAS_BACKGROUND_COLOR ;
 int STYLE_HAS_FONT_ALPHA ;
 int STYLE_HAS_FONT_COLOR ;
 int STYLE_ITALIC ;
 int STYLE_MONOSPACED ;
 int STYLE_UNDERLINE ;

__attribute__((used)) static void CEA708PenStyleToSegment( const cea708_pen_style_t *ps, text_style_t *s )
{
    if( ps->background.opacity != CEA708_OPACITY_TRANSPARENT )
    {
        s->i_background_alpha = CEA708AlphaConvert( ps->background.opacity );
        s->i_style_flags |= STYLE_BACKGROUND;
        s->i_background_color = CEA708ColorConvert( ps->background.color );
        s->i_features |= STYLE_HAS_BACKGROUND_COLOR|STYLE_HAS_BACKGROUND_ALPHA;
        if( ps->background.opacity == CEA708_OPACITY_FLASH )
            s->i_style_flags |= STYLE_BLINK_BACKGROUND;
    }
    s->i_font_color = CEA708ColorConvert( ps->foreground.color );
    s->i_font_alpha = CEA708AlphaConvert( ps->foreground.opacity );
    s->i_features |= STYLE_HAS_FONT_ALPHA|STYLE_HAS_FONT_COLOR;
    if( ps->foreground.opacity == CEA708_OPACITY_FLASH )
        s->i_style_flags |= STYLE_BLINK_FOREGROUND;

    if( ps->b_italics )
        s->i_style_flags |= STYLE_ITALIC;
    if( ps->b_underline )
        s->i_style_flags |= STYLE_UNDERLINE;

    switch( ps->font )
    {
        default:
        case 130:
        case 135:
        case 134:
            s->i_style_flags |= STYLE_MONOSPACED;
            break;
        case 133:
        case 132:
        case 137:
        case 136:
        case 131:
            break;
    }

    switch( ps->size )
    {
        case 128:
            s->f_font_relsize = CEA708_FONTRELSIZE_SMALL;
            break;
        case 129:
            s->f_font_relsize = CEA708_FONTRELSIZE_LARGE;
            break;
        default:
            s->f_font_relsize = CEA708_FONTRELSIZE_STANDARD;
            break;
    }
}
