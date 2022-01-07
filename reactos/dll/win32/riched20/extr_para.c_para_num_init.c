
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef int cf ;
typedef int bullet_font ;
typedef char WCHAR ;
struct TYPE_25__ {int cbSize; int dwMask; int bCharSet; int szFaceName; } ;
struct TYPE_24__ {int hDC; int editor; } ;
struct TYPE_21__ {int * style; scalar_t__ width; TYPE_10__* text; } ;
struct TYPE_20__ {scalar_t__ wNumbering; } ;
struct TYPE_23__ {TYPE_3__ para_num; TYPE_2__ fmt; TYPE_1__* eop_run; } ;
struct TYPE_22__ {scalar_t__ cx; } ;
struct TYPE_19__ {int * style; } ;
struct TYPE_18__ {char const* szData; int nLen; } ;
typedef TYPE_4__ SIZE ;
typedef int ME_Style ;
typedef TYPE_5__ ME_Paragraph ;
typedef TYPE_6__ ME_Context ;
typedef int HFONT ;
typedef TYPE_7__ CHARFORMAT2W ;


 int CFM_CHARSET ;
 int CFM_FACE ;
 int GetTextExtentPointW (int ,char const*,int,TYPE_4__*) ;
 int ME_AddRefStyle (int *) ;
 int * ME_ApplyStyle (int ,int *,TYPE_7__*) ;
 TYPE_10__* ME_MakeStringConst (char const*,int) ;
 int ME_SelectStyleFont (TYPE_6__*,int *) ;
 int ME_UnselectStyleFont (TYPE_6__*,int *,int ) ;
 scalar_t__ PFN_BULLET ;
 int SYMBOL_CHARSET ;
 int memcpy (int ,char const*,int) ;
 int para_num_get_num (TYPE_5__*) ;
 TYPE_10__* para_num_get_str (TYPE_5__*,int ) ;

void para_num_init( ME_Context *c, ME_Paragraph *para )
{
    ME_Style *style;
    CHARFORMAT2W cf;
    static const WCHAR bullet_font[] = {'S','y','m','b','o','l',0};
    static const WCHAR bullet_str[] = {0xb7, 0};
    static const WCHAR spaceW[] = {' ', 0};
    HFONT old_font;
    SIZE sz;

    if (para->para_num.style && para->para_num.text) return;

    if (!para->para_num.style)
    {
        style = para->eop_run->style;

        if (para->fmt.wNumbering == PFN_BULLET)
        {
            cf.cbSize = sizeof(cf);
            cf.dwMask = CFM_FACE | CFM_CHARSET;
            memcpy( cf.szFaceName, bullet_font, sizeof(bullet_font) );
            cf.bCharSet = SYMBOL_CHARSET;
            style = ME_ApplyStyle( c->editor, style, &cf );
        }
        else
        {
            ME_AddRefStyle( style );
        }

        para->para_num.style = style;
    }

    if (!para->para_num.text)
    {
        if (para->fmt.wNumbering != PFN_BULLET)
            para->para_num.text = para_num_get_str( para, para_num_get_num( para ) );
        else
            para->para_num.text = ME_MakeStringConst( bullet_str, 1 );
    }

    old_font = ME_SelectStyleFont( c, para->para_num.style );
    GetTextExtentPointW( c->hDC, para->para_num.text->szData, para->para_num.text->nLen, &sz );
    para->para_num.width = sz.cx;
    GetTextExtentPointW( c->hDC, spaceW, 1, &sz );
    para->para_num.width += sz.cx;
    ME_UnselectStyleFont( c, para->para_num.style, old_font );
}
