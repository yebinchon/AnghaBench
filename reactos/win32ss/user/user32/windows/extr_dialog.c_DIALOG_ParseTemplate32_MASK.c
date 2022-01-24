#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
typedef  int UINT_PTR ;
struct TYPE_3__ {int style; int nbItems; int x; int y; int cx; int cy; int pointSize; int weight; void* italic; int /*<<< orphan*/ * faceName; void* dialogEx; int /*<<< orphan*/ * caption; int /*<<< orphan*/ * className; int /*<<< orphan*/ * menuName; void* exStyle; void* helpId; } ;
typedef  void* LPCWSTR ;
typedef  scalar_t__ LPCSTR ;
typedef  TYPE_1__ DLG_TEMPLATE ;

/* Variables and functions */
 int DS_SETFONT ; 
 void* FALSE ; 
 int FW_DONTCARE ; 
 void* FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 void* TRUE ; 
 int /*<<< orphan*/ * WC_DIALOG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static LPCSTR FUNC7( LPCSTR template, DLG_TEMPLATE * result )
{
    const WORD *p = (const WORD *)template;
    WORD signature;
    WORD dlgver;

    dlgver = FUNC1(p); p++;
    signature = FUNC1(p); p++;

    if (dlgver == 1 && signature == 0xffff)  /* DIALOGEX resource */
    {
        result->dialogEx = TRUE;
        result->helpId   = FUNC0(p); p += 2;
        result->exStyle  = FUNC0(p); p += 2;
        result->style    = FUNC0(p); p += 2;
    }
    else
    {
        result->style = FUNC0(p - 2);
        result->dialogEx = FALSE;
        result->helpId   = 0;
        result->exStyle  = FUNC0(p); p += 2;
    }
    result->nbItems = FUNC1(p); p++;
    result->x       = FUNC1(p); p++;
    result->y       = FUNC1(p); p++;
    result->cx      = FUNC1(p); p++;
    result->cy      = FUNC1(p); p++;
    FUNC4("DIALOG%s %d, %d, %d, %d, %d\n",
           result->dialogEx ? "EX" : "", result->x, result->y,
           result->cx, result->cy, result->helpId );
    FUNC4(" STYLE 0x%08x\n", result->style );
    FUNC4(" EXSTYLE 0x%08x\n", result->exStyle );

    /* Get the menu name */

    switch(FUNC1(p))
    {
        case 0x0000:
            result->menuName = NULL;
            p++;
            break;
        case 0xffff:
            result->menuName = (LPCWSTR)(UINT_PTR)FUNC1( p + 1 );
            p += 2;
            FUNC4(" MENU %04x\n", FUNC3(result->menuName) );
            break;
        default:
            result->menuName = (LPCWSTR)p;
            FUNC4(" MENU %s\n", FUNC5(result->menuName) );
            p += FUNC6( result->menuName ) + 1;
            break;
    }

    /* Get the class name */

    switch(FUNC1(p))
    {
        case 0x0000:
            result->className = WC_DIALOG;
            p++;
            break;
        case 0xffff:
            result->className = (LPCWSTR)(UINT_PTR)FUNC1( p + 1 );
            p += 2;
            FUNC4(" CLASS %04x\n", FUNC3(result->className) );
            break;
        default:
            result->className = (LPCWSTR)p;
            FUNC4(" CLASS %s\n", FUNC5( result->className ));
            p += FUNC6( result->className ) + 1;
            break;
    }

    /* Get the window caption */

    result->caption = (LPCWSTR)p;
    p += FUNC6( result->caption ) + 1;
    FUNC4(" CAPTION %s\n", FUNC5( result->caption ) );

    /* Get the font name */

    result->pointSize = 0;
    result->faceName = NULL;
    result->weight = FW_DONTCARE;
    result->italic = FALSE;

    if (result->style & DS_SETFONT)
    {
        result->pointSize = FUNC1(p);
        p++;

        /* If pointSize is 0x7fff, it means that we need to use the font
         * in NONCLIENTMETRICSW.lfMessageFont, and NOT read the weight,
         * italic, and facename from the dialog template.
         */
        if (result->pointSize == 0x7fff)
        {
            /* We could call SystemParametersInfo here, but then we'd have
             * to convert from pixel size to point size (which can be
             * imprecise).
             */
            FUNC4(" FONT: Using message box font\n");
        }
        else
        {
            if (result->dialogEx)
            {
                result->weight = FUNC1(p); p++;
                result->italic = FUNC2(FUNC1(p)); p++;
            }
            result->faceName = (LPCWSTR)p;
            p += FUNC6( result->faceName ) + 1;

            FUNC4(" FONT %d, %s, %d, %s\n",
                  result->pointSize, FUNC5( result->faceName ),
                  result->weight, result->italic ? "TRUE" : "FALSE" );
        }
    }

    /* First control is on dword boundary */
    return (LPCSTR)((((UINT_PTR)p) + 3) & ~3);
}