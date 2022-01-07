
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FALSE ;
 int TRUE ;
 scalar_t__ g_fCBrkPressed ;
 scalar_t__ g_fCtrlCPressed ;
 int got_int ;

void
mch_breakcheck(void)
{

    if (g_fCtrlCPressed || g_fCBrkPressed)
    {
 g_fCtrlCPressed = g_fCBrkPressed = FALSE;
 got_int = TRUE;
    }

}
