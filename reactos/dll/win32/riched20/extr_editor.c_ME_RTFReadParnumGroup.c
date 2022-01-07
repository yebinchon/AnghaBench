
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* WORD ;
typedef char WCHAR ;
struct TYPE_8__ {int dwMask; int wNumbering; void* wNumberingTab; int wNumberingStyle; void* wNumberingStart; } ;
struct TYPE_9__ {int rtfMinor; scalar_t__ rtfClass; char rtfMajor; TYPE_1__ fmt; void* rtfParam; } ;
typedef TYPE_2__ RTF_Info ;


 int PFM_NUMBERING ;
 int PFM_NUMBERINGSTART ;
 int PFM_NUMBERINGSTYLE ;
 int PFM_NUMBERINGTAB ;
 int PFNS_PAREN ;
 int PFNS_PARENS ;
 int PFNS_PERIOD ;
 int PFNS_PLAIN ;
 int PFN_ARABIC ;
 int PFN_BULLET ;
 int PFN_LCLETTER ;
 int PFN_LCROMAN ;
 int PFN_UCLETTER ;
 int PFN_UCROMAN ;
 scalar_t__ RTFCheckCM (TYPE_2__*,int ,int ) ;
 scalar_t__ RTFCheckCMM (TYPE_2__*,int ,int ,int) ;
 int RTFGetToken (TYPE_2__*) ;
 int RTFRouteToken (TYPE_2__*) ;
 int TRACE (char*,int,void*,void*,char,char) ;
 int rtfBeginGroup ;
 int rtfControl ;
 int rtfDestination ;
 scalar_t__ rtfEOF ;
 int rtfEndGroup ;
 int rtfGroup ;
 int rtfParAttr ;







 int rtfParNumTextAfter ;
 int rtfParNumTextBefore ;



 scalar_t__ rtfText ;

__attribute__((used)) static void ME_RTFReadParnumGroup( RTF_Info *info )
{
    int level = 1, type = -1;
    WORD indent = 0, start = 1;
    WCHAR txt_before = 0, txt_after = 0;

    for (;;)
    {
        RTFGetToken( info );

        if (RTFCheckCMM( info, rtfControl, rtfDestination, rtfParNumTextBefore ) ||
            RTFCheckCMM( info, rtfControl, rtfDestination, rtfParNumTextAfter ))
        {
            int loc = info->rtfMinor;

            RTFGetToken( info );
            if (info->rtfClass == rtfText)
            {
                if (loc == rtfParNumTextBefore)
                    txt_before = info->rtfMajor;
                else
                    txt_after = info->rtfMajor;
                continue;
            }

        }

        if (info->rtfClass == rtfEOF)
            return;

        if (RTFCheckCM( info, rtfGroup, rtfEndGroup ))
        {
            if (--level == 0) break;
            continue;
        }

        if (RTFCheckCM( info, rtfGroup, rtfBeginGroup ))
        {
            level++;
            continue;
        }


        if (!RTFCheckCM( info, rtfControl, rtfParAttr ))
            continue;

        switch (info->rtfMinor)
        {
        case 136:
        case 128:
            break;
        case 137:
            type = PFN_BULLET;
            break;

        case 135:
            type = PFN_ARABIC;
            break;
        case 130:
            type = PFN_UCLETTER;
            break;
        case 129:
            type = PFN_UCROMAN;
            break;
        case 133:
            type = PFN_LCLETTER;
            break;
        case 132:
            type = PFN_LCROMAN;
            break;

        case 134:
            indent = info->rtfParam;
            break;
        case 131:
            start = info->rtfParam;
            break;
        }
    }

    if (type != -1)
    {
        info->fmt.dwMask |= (PFM_NUMBERING | PFM_NUMBERINGSTART | PFM_NUMBERINGSTYLE | PFM_NUMBERINGTAB);
        info->fmt.wNumbering = type;
        info->fmt.wNumberingStart = start;
        info->fmt.wNumberingStyle = PFNS_PAREN;
        if (type != PFN_BULLET)
        {
            if (txt_before == 0 && txt_after == 0)
                info->fmt.wNumberingStyle = PFNS_PLAIN;
            else if (txt_after == '.')
                info->fmt.wNumberingStyle = PFNS_PERIOD;
            else if (txt_before == '(' && txt_after == ')')
                info->fmt.wNumberingStyle = PFNS_PARENS;
        }
        info->fmt.wNumberingTab = indent;
    }

    TRACE("type %d indent %d start %d txt before %04x txt after %04x\n",
          type, indent, start, txt_before, txt_after);

    RTFRouteToken( info );
}
