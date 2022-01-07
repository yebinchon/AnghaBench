
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int wNumbering; int wNumberingStyle; int wNumberingStart; int wNumberingTab; } ;
struct TYPE_9__ {TYPE_2__* text; TYPE_1__* style; } ;
struct TYPE_11__ {TYPE_4__ fmt; TYPE_3__ para_num; } ;
struct TYPE_8__ {int nLen; int szData; } ;
struct TYPE_7__ {int fmt; } ;
typedef TYPE_5__ ME_Paragraph ;
typedef int ME_OutStream ;
typedef int BOOL ;


 int FALSE ;
 int ME_StreamOutPrint (int *,char const*,...) ;
 int ME_StreamOutRTFText (int *,int ,int ) ;




 int PFN_BULLET ;




 int TRUE ;
 int find_font_in_fonttbl (int *,int *,unsigned int*) ;

__attribute__((used)) static BOOL stream_out_para_num( ME_OutStream *stream, ME_Paragraph *para, BOOL pn_dest )
{
    static const char fmt_label[] = "{\\*\\pn\\pnlvlbody\\pnf%u\\pnindent%d\\pnstart%d%s%s}";
    static const char fmt_bullet[] = "{\\*\\pn\\pnlvlblt\\pnf%u\\pnindent%d{\\pntxtb\\'b7}}";
    static const char dec[] = "\\pndec";
    static const char lcltr[] = "\\pnlcltr";
    static const char ucltr[] = "\\pnucltr";
    static const char lcrm[] = "\\pnlcrm";
    static const char ucrm[] = "\\pnucrm";
    static const char period[] = "{\\pntxta.}";
    static const char paren[] = "{\\pntxta)}";
    static const char parens[] = "{\\pntxtb(}{\\pntxta)}";
    const char *type, *style = "";
    unsigned int idx;

    find_font_in_fonttbl( stream, &para->para_num.style->fmt, &idx );

    if (!ME_StreamOutPrint( stream, "{\\pntext\\f%u ", idx )) return FALSE;
    if (!ME_StreamOutRTFText( stream, para->para_num.text->szData, para->para_num.text->nLen ))
        return FALSE;
    if (!ME_StreamOutPrint( stream, "\\tab}" )) return FALSE;

    if (!pn_dest) return TRUE;

    if (para->fmt.wNumbering == PFN_BULLET)
    {
        if (!ME_StreamOutPrint( stream, fmt_bullet, idx, para->fmt.wNumberingTab ))
            return FALSE;
    }
    else
    {
        switch (para->fmt.wNumbering)
        {
        case 132:
        default:
            type = dec;
            break;
        case 131:
            type = lcltr;
            break;
        case 129:
            type = ucltr;
            break;
        case 130:
            type = lcrm;
            break;
        case 128:
            type = ucrm;
            break;
        }
        switch (para->fmt.wNumberingStyle & 0xf00)
        {
        case 133:
            style = period;
            break;
        case 135:
            style = paren;
            break;
        case 134:
            style = parens;
            break;
        }

        if (!ME_StreamOutPrint( stream, fmt_label, idx, para->fmt.wNumberingTab,
                                para->fmt.wNumberingStart, type, style ))
            return FALSE;
    }
    return TRUE;
}
