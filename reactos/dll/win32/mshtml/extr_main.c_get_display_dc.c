
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int HDC ;


 int CreateICW (char const*,int *,int *,int *) ;
 int DeleteObject (int ) ;
 scalar_t__ InterlockedCompareExchangePointer (void**,int ,int *) ;
 int display_dc ;

HDC get_display_dc(void)
{
    static const WCHAR displayW[] = {'D','I','S','P','L','A','Y',0};

    if(!display_dc) {
        HDC hdc;

        hdc = CreateICW(displayW, ((void*)0), ((void*)0), ((void*)0));
        if(InterlockedCompareExchangePointer((void**)&display_dc, hdc, ((void*)0)))
            DeleteObject(hdc);
    }

    return display_dc;
}
