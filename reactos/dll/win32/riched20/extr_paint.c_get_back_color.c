
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* editor; } ;
struct TYPE_8__ {int dwMask; int dwEffects; int crBackColor; } ;
struct TYPE_9__ {TYPE_2__ fmt; } ;
struct TYPE_7__ {int texthost; } ;
typedef TYPE_3__ ME_Style ;
typedef TYPE_4__ ME_Context ;
typedef int COLORREF ;
typedef scalar_t__ BOOL ;


 int CFE_AUTOBACKCOLOR ;
 int CFM_BACKCOLOR ;
 int COLOR_HIGHLIGHT ;
 int COLOR_WINDOW ;
 int ITextHost_TxGetSysColor (int ,int ) ;

__attribute__((used)) static COLORREF get_back_color( ME_Context *c, ME_Style *style, BOOL highlight )
{
    COLORREF color;

    if (highlight)
        color = ITextHost_TxGetSysColor( c->editor->texthost, COLOR_HIGHLIGHT );
    else if ( (style->fmt.dwMask & CFM_BACKCOLOR)
            && !(style->fmt.dwEffects & CFE_AUTOBACKCOLOR) )
        color = style->fmt.crBackColor;
    else
        color = ITextHost_TxGetSysColor( c->editor->texthost, COLOR_WINDOW );

    return color;
}
