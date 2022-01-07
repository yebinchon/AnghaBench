
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WND_DATA ;
typedef int * PWND_DATA ;
typedef int LPCWSTR ;
typedef int HWND ;


 int GetProcessHeap () ;
 scalar_t__ GetPropW (int ,int ) ;
 int HEAP_ZERO_MEMORY ;
 int * HeapAlloc (int ,int ,int) ;
 scalar_t__ MAKEINTATOM (int ) ;
 int SetPropW (int ,int ,int *) ;
 int atWndContext ;

PWND_DATA ThemeGetWndData(HWND hWnd)
{
    PWND_DATA pwndData;

    pwndData = (PWND_DATA)GetPropW(hWnd, (LPCWSTR)MAKEINTATOM(atWndContext));
    if(pwndData == ((void*)0))
    {
        pwndData = HeapAlloc(GetProcessHeap(),
                            HEAP_ZERO_MEMORY,
                            sizeof(WND_DATA));
        if(pwndData == ((void*)0))
        {
            return ((void*)0);
        }

        SetPropW( hWnd, (LPCWSTR)MAKEINTATOM(atWndContext), pwndData);
    }

    return pwndData;
}
