
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* callbackexex ) (char*,int ,int ) ;int (* callbackex ) (char*,int ) ;int (* callback ) (char*) ;} ;
struct enumdateformats_context {int flags; int type; int lParam; TYPE_1__ u; scalar_t__ unicode; int lcid; } ;
typedef int cal_id ;
typedef char WCHAR ;
typedef char* LPWSTR ;
typedef int LCTYPE ;
typedef scalar_t__ INT ;
typedef int CALID ;
typedef int BOOL ;


 int ARRAY_SIZE (char*) ;






 int ERROR_INVALID_PARAMETER ;
 int FALSE ;
 int FIXME (char*,int) ;
 scalar_t__ GetLocaleInfoA (int ,int,char*,int) ;
 scalar_t__ GetLocaleInfoW (int ,int,char*,int) ;
 int LOCALE_ICALENDARTYPE ;
 int LOCALE_RETURN_NUMBER ;
 int LOCALE_SLONGDATE ;
 int LOCALE_SSHORTDATE ;
 int LOCALE_SYEARMONTH ;
 int LOCALE_USE_CP_ACP ;
 int SetLastError (int ) ;
 int TRUE ;
 int stub1 (char*) ;
 int stub2 (char*,int ) ;
 int stub3 (char*,int ,int ) ;

__attribute__((used)) static BOOL NLS_EnumDateFormats(const struct enumdateformats_context *ctxt)
{
    WCHAR bufW[256];
    char bufA[256];
    LCTYPE lctype;
    CALID cal_id;
    INT ret;

    if (!ctxt->u.callback)
    {
        SetLastError(ERROR_INVALID_PARAMETER);
        return FALSE;
    }

    if (!GetLocaleInfoW(ctxt->lcid, LOCALE_ICALENDARTYPE|LOCALE_RETURN_NUMBER, (LPWSTR)&cal_id, sizeof(cal_id)/sizeof(WCHAR)))
        return FALSE;

    switch (ctxt->flags & ~LOCALE_USE_CP_ACP)
    {
    case 0:
    case 129:
        lctype = LOCALE_SSHORTDATE;
        break;
    case 130:
        lctype = LOCALE_SLONGDATE;
        break;
    case 128:
        lctype = LOCALE_SYEARMONTH;
        break;
    default:
        FIXME("Unknown date format (0x%08x)\n", ctxt->flags);
        SetLastError(ERROR_INVALID_PARAMETER);
        return FALSE;
    }

    lctype |= ctxt->flags & LOCALE_USE_CP_ACP;
    if (ctxt->unicode)
        ret = GetLocaleInfoW(ctxt->lcid, lctype, bufW, ARRAY_SIZE(bufW));
    else
        ret = GetLocaleInfoA(ctxt->lcid, lctype, bufA, ARRAY_SIZE(bufA));

    if (ret)
    {
        switch (ctxt->type)
        {
        case 133:
            ctxt->u.callback(ctxt->unicode ? bufW : (WCHAR*)bufA);
            break;
        case 132:
            ctxt->u.callbackex(ctxt->unicode ? bufW : (WCHAR*)bufA, cal_id);
            break;
        case 131:
            ctxt->u.callbackexex(bufW, cal_id, ctxt->lParam);
            break;
        default:
            ;
        }
    }

    return TRUE;
}
