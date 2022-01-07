
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int str; int l; int f; } ;
typedef TYPE_1__ textfont_prop_val ;
typedef int fmt ;
typedef enum textfont_prop_id { ____Placeholder_textfont_prop_id } textfont_prop_id ;
struct TYPE_13__ {int cbSize; int szFaceName; int wWeight; int sSpacing; int yHeight; int yOffset; int lcid; int wKerning; int crTextColor; int crBackColor; void* dwEffects; int bAnimation; void* dwMask; } ;
struct TYPE_12__ {int editor; } ;
struct TYPE_11__ {int range; TYPE_1__* props; scalar_t__ set_cache_enabled; } ;
typedef int ME_Cursor ;
typedef int LONG ;
typedef TYPE_2__ ITextFontImpl ;
typedef TYPE_3__ IRichEditOleImpl ;
typedef int HRESULT ;
typedef TYPE_4__ CHARFORMAT2W ;


 int ARRAY_SIZE (int ) ;
 int CO_E_RELEASED ;
 int E_FAIL ;
 int FIXME (char*,int) ;
 int ITextRange_GetEnd (int ,int *) ;
 int ITextRange_GetStart (int ,int *) ;
 int ME_CursorFromCharOfs (int ,int ,int *) ;
 int ME_SetCharFormat (int ,int *,int *,TYPE_4__*) ;
 int S_OK ;
 int SysAllocString (int ) ;
 int SysFreeString (int ) ;
 TYPE_3__* get_range_reole (int ) ;
 int lstrcpynW (int ,int ,int ) ;
 int memset (TYPE_4__*,int ,int) ;
 void*** textfont_prop_masks ;
 int tomAutoColor ;
 int tomTrue ;

__attribute__((used)) static HRESULT set_textfont_prop(ITextFontImpl *font, enum textfont_prop_id propid, const textfont_prop_val *value)
{
    const IRichEditOleImpl *reole;
    ME_Cursor from, to;
    CHARFORMAT2W fmt;
    LONG start, end;


    if (!font->range || font->set_cache_enabled) {
        if (propid == 140) {
            SysFreeString(font->props[propid].str);
            font->props[propid].str = SysAllocString(value->str);
        }
        else
            font->props[propid] = *value;
        return S_OK;
    }

    if (!(reole = get_range_reole(font->range)))
        return CO_E_RELEASED;

    memset(&fmt, 0, sizeof(fmt));
    fmt.cbSize = sizeof(fmt);
    fmt.dwMask = textfont_prop_masks[propid][0];

    switch (propid)
    {
    case 151:
    case 148:
    case 147:
    case 144:
    case 146:
    case 143:
    case 139:
    case 137:
    case 136:
    case 134:
    case 132:
    case 131:
    case 130:
    case 129:
        fmt.dwEffects = value->l == tomTrue ? textfont_prop_masks[propid][1] : 0;
        break;
    case 150:
        fmt.bAnimation = value->l;
        break;
    case 149:
    case 145:
        if (value->l == tomAutoColor)
            fmt.dwEffects = textfont_prop_masks[propid][1];
        else if (propid == 149)
            fmt.crBackColor = value->l;
        else
            fmt.crTextColor = value->l;
        break;
    case 142:
        fmt.wKerning = value->f;
        break;
    case 141:
        fmt.lcid = value->l;
        break;
    case 138:
        fmt.yOffset = value->f;
        break;
    case 135:
        fmt.yHeight = value->f;
        break;
    case 133:
        fmt.sSpacing = value->f;
        break;
    case 128:
        fmt.wWeight = value->l;
        break;
    case 140:
        lstrcpynW(fmt.szFaceName, value->str, ARRAY_SIZE(fmt.szFaceName));
        break;
    default:
        FIXME("unhandled font property %d\n", propid);
        return E_FAIL;
    }

    ITextRange_GetStart(font->range, &start);
    ITextRange_GetEnd(font->range, &end);

    ME_CursorFromCharOfs(reole->editor, start, &from);
    ME_CursorFromCharOfs(reole->editor, end, &to);
    ME_SetCharFormat(reole->editor, &from, &to, &fmt);

    return S_OK;
}
