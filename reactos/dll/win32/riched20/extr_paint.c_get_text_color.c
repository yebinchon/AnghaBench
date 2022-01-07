
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* editor; } ;
struct TYPE_7__ {int dwMask; int dwEffects; int crTextColor; } ;
struct TYPE_9__ {TYPE_1__ fmt; } ;
struct TYPE_8__ {int texthost; } ;
typedef TYPE_3__ ME_Style ;
typedef TYPE_4__ ME_Context ;
typedef int COLORREF ;
typedef scalar_t__ BOOL ;


 int CFE_AUTOCOLOR ;
 int CFE_LINK ;
 int CFM_COLOR ;
 int CFM_LINK ;
 int COLOR_HIGHLIGHTTEXT ;
 int COLOR_WINDOWTEXT ;
 int ITextHost_TxGetSysColor (int ,int ) ;
 int RGB (int ,int ,int) ;

__attribute__((used)) static COLORREF get_text_color( ME_Context *c, ME_Style *style, BOOL highlight )
{
    COLORREF color;

    if (highlight)
        color = ITextHost_TxGetSysColor( c->editor->texthost, COLOR_HIGHLIGHTTEXT );
    else if ((style->fmt.dwMask & CFM_LINK) && (style->fmt.dwEffects & CFE_LINK))
        color = RGB(0,0,255);
    else if ((style->fmt.dwMask & CFM_COLOR) && (style->fmt.dwEffects & CFE_AUTOCOLOR))
        color = ITextHost_TxGetSysColor( c->editor->texthost, COLOR_WINDOWTEXT );
    else
        color = style->fmt.crTextColor;

    return color;
}
