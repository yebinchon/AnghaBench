
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void* l; void* f; int str; } ;
typedef TYPE_1__ textfont_prop_val ;
typedef int fmt ;
typedef enum textfont_prop_id { ____Placeholder_textfont_prop_id } textfont_prop_id ;
struct TYPE_10__ {int cbSize; int dwMask; int dwEffects; void* crBackColor; void* crTextColor; void* wWeight; void* sSpacing; int yHeight; int yOffset; int szFaceName; void* lcid; int wKerning; void* bAnimation; } ;
struct TYPE_9__ {int editor; } ;
typedef int ME_Cursor ;
typedef TYPE_2__ IRichEditOleImpl ;
typedef int HRESULT ;
typedef TYPE_3__ CHARFORMAT2W ;


 int CFE_AUTOBACKCOLOR ;
 int CFE_AUTOCOLOR ;
 int COLOR_WINDOW ;
 int COLOR_WINDOWTEXT ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int FALSE ;
 int FIXME (char*,int) ;
 void* GetSysColor (int ) ;
 int ME_CursorFromCharOfs (int ,int,int *) ;
 int ME_GetCharFormat (int ,int *,int *,TYPE_3__*) ;
 int ME_MoveCursorChars (int ,int *,int,int ) ;
 int S_OK ;
 int SysAllocString (int ) ;
 int memset (TYPE_3__*,int ,int) ;
 int** textfont_prop_masks ;
 void* tomFalse ;
 void* tomTrue ;
 void* twips_to_points (int ) ;

__attribute__((used)) static HRESULT get_textfont_prop_for_pos(const IRichEditOleImpl *reole, int pos, enum textfont_prop_id propid,
    textfont_prop_val *value)
{
    ME_Cursor from, to;
    CHARFORMAT2W fmt;

    memset(&fmt, 0, sizeof(fmt));
    fmt.cbSize = sizeof(fmt);
    fmt.dwMask = textfont_prop_masks[propid][0];

    ME_CursorFromCharOfs(reole->editor, pos, &from);
    to = from;
    ME_MoveCursorChars(reole->editor, &to, 1, FALSE);
    ME_GetCharFormat(reole->editor, &from, &to, &fmt);

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
        value->l = fmt.dwEffects & textfont_prop_masks[propid][1] ? tomTrue : tomFalse;
        break;
    case 150:
        value->l = fmt.bAnimation;
        break;
    case 149:
        value->l = fmt.dwEffects & CFE_AUTOBACKCOLOR ? GetSysColor(COLOR_WINDOW) : fmt.crBackColor;
        break;
    case 145:
        value->l = fmt.dwEffects & CFE_AUTOCOLOR ? GetSysColor(COLOR_WINDOWTEXT) : fmt.crTextColor;
        break;
    case 142:
        value->f = twips_to_points(fmt.wKerning);
        break;
    case 141:
        value->l = fmt.lcid;
        break;
    case 140:

        value->str = SysAllocString(fmt.szFaceName);
        if (!value->str)
            return E_OUTOFMEMORY;
        break;
    case 138:
        value->f = twips_to_points(fmt.yOffset);
        break;
    case 135:
        value->f = twips_to_points(fmt.yHeight);
        break;
    case 133:
        value->f = fmt.sSpacing;
        break;
    case 128:
        value->l = fmt.wWeight;
        break;
    default:
        FIXME("unhandled font property %d\n", propid);
        return E_FAIL;
    }

    return S_OK;
}
