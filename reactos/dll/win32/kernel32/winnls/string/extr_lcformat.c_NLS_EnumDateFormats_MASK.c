#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* callbackexex ) (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* callbackex ) (char*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* callback ) (char*) ;} ;
struct enumdateformats_context {int flags; int type; int /*<<< orphan*/  lParam; TYPE_1__ u; scalar_t__ unicode; int /*<<< orphan*/  lcid; } ;
typedef  int /*<<< orphan*/  cal_id ;
typedef  char WCHAR ;
typedef  char* LPWSTR ;
typedef  int LCTYPE ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  CALID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FUNC0 (char*) ; 
#define  CALLBACK_ENUMPROC 133 
#define  CALLBACK_ENUMPROCEX 132 
#define  CALLBACK_ENUMPROCEXEX 131 
#define  DATE_LONGDATE 130 
#define  DATE_SHORTDATE 129 
#define  DATE_YEARMONTH 128 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,char*,int) ; 
 int LOCALE_ICALENDARTYPE ; 
 int LOCALE_RETURN_NUMBER ; 
 int LOCALE_SLONGDATE ; 
 int LOCALE_SSHORTDATE ; 
 int LOCALE_SYEARMONTH ; 
 int LOCALE_USE_CP_ACP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC8(const struct enumdateformats_context *ctxt)
{
    WCHAR bufW[256];
    char bufA[256];
    LCTYPE lctype;
    CALID cal_id;
    INT ret;

    if (!ctxt->u.callback)
    {
        FUNC4(ERROR_INVALID_PARAMETER);
        return FALSE;
    }

    if (!FUNC3(ctxt->lcid, LOCALE_ICALENDARTYPE|LOCALE_RETURN_NUMBER, (LPWSTR)&cal_id, sizeof(cal_id)/sizeof(WCHAR)))
        return FALSE;

    switch (ctxt->flags & ~LOCALE_USE_CP_ACP)
    {
    case 0:
    case DATE_SHORTDATE:
        lctype = LOCALE_SSHORTDATE;
        break;
    case DATE_LONGDATE:
        lctype = LOCALE_SLONGDATE;
        break;
    case DATE_YEARMONTH:
        lctype = LOCALE_SYEARMONTH;
        break;
    default:
        FUNC1("Unknown date format (0x%08x)\n", ctxt->flags);
        FUNC4(ERROR_INVALID_PARAMETER);
        return FALSE;
    }

    lctype |= ctxt->flags & LOCALE_USE_CP_ACP;
    if (ctxt->unicode)
        ret = FUNC3(ctxt->lcid, lctype, bufW, FUNC0(bufW));
    else
        ret = FUNC2(ctxt->lcid, lctype, bufA, FUNC0(bufA));

    if (ret)
    {
        switch (ctxt->type)
        {
        case CALLBACK_ENUMPROC:
            ctxt->u.callback(ctxt->unicode ? bufW : (WCHAR*)bufA);
            break;
        case CALLBACK_ENUMPROCEX:
            ctxt->u.callbackex(ctxt->unicode ? bufW : (WCHAR*)bufA, cal_id);
            break;
        case CALLBACK_ENUMPROCEXEX:
            ctxt->u.callbackexex(bufW, cal_id, ctxt->lParam);
            break;
        default:
            ;
        }
    }

    return TRUE;
}