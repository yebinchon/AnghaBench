
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* callbackex ) (char*,int ) ;int (* callback ) (char*) ;} ;
struct enumtimeformats_context {int flags; int type; int lParam; TYPE_1__ u; scalar_t__ unicode; int lcid; } ;
typedef char WCHAR ;
typedef int LCTYPE ;
typedef scalar_t__ INT ;
typedef int BOOL ;


 int ARRAY_SIZE (char*) ;


 int ERROR_INVALID_PARAMETER ;
 int FALSE ;
 int FIXME (char*,int) ;
 scalar_t__ GetLocaleInfoA (int ,int,char*,int ) ;
 scalar_t__ GetLocaleInfoW (int ,int,char*,int ) ;
 int LOCALE_SSHORTTIME ;
 int LOCALE_STIMEFORMAT ;
 int LOCALE_USE_CP_ACP ;
 int SetLastError (int ) ;

 int TRUE ;
 int stub1 (char*) ;
 int stub2 (char*,int ) ;

__attribute__((used)) static BOOL NLS_EnumTimeFormats(struct enumtimeformats_context *ctxt)
{
    WCHAR bufW[256];
    char bufA[256];
    LCTYPE lctype;
    INT ret;

    if (!ctxt->u.callback)
    {
        SetLastError(ERROR_INVALID_PARAMETER);
        return FALSE;
    }

    switch (ctxt->flags & ~LOCALE_USE_CP_ACP)
    {
    case 0:
        lctype = LOCALE_STIMEFORMAT;
        break;
    case 128:
        lctype = LOCALE_SSHORTTIME;
        break;
    default:
        FIXME("Unknown time format (%d)\n", ctxt->flags);
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
        case 130:
            ctxt->u.callback(ctxt->unicode ? bufW : (WCHAR*)bufA);
            break;
        case 129:
            ctxt->u.callbackex(bufW, ctxt->lParam);
            break;
        default:
            ;
        }
    }

    return TRUE;
}
