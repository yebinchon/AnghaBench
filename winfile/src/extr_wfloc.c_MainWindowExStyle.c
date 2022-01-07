
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long DWORD ;


 scalar_t__ DefaultLayoutRTL () ;
 long WS_EX_LAYOUTRTL ;
 long WS_EX_NOINHERITLAYOUT ;
 scalar_t__ bMirrorContent ;

DWORD MainWindowExStyle()
{
    DWORD exStyle = 0L;

    if (DefaultLayoutRTL())
    {
        exStyle = WS_EX_LAYOUTRTL;
        if (!bMirrorContent)
            exStyle |= WS_EX_NOINHERITLAYOUT;
    }
    else
    {
        exStyle = bMirrorContent ? WS_EX_LAYOUTRTL : 0;
    }

    return exStyle;
}
