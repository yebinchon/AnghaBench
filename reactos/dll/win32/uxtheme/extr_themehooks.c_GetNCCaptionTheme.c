
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hthemeWindow; } ;
typedef TYPE_1__* PWND_DATA ;
typedef int HWND ;
typedef int * HTHEME ;
typedef int DWORD ;


 int CloseThemeData (int *) ;
 int GetThemeAppProperties () ;
 int OTD_NONCLIENT ;
 int * OpenThemeDataEx (int ,char*,int ) ;
 int STAP_ALLOW_NONCLIENT ;
 TYPE_1__* ThemeGetWndData (int ) ;
 int WS_CAPTION ;

HTHEME GetNCCaptionTheme(HWND hWnd, DWORD style)
{
    PWND_DATA pwndData;


    if((style & WS_CAPTION) != WS_CAPTION)
        return ((void*)0);


    pwndData = ThemeGetWndData(hWnd);
    if (pwndData == ((void*)0))
        return ((void*)0);

    if (!(GetThemeAppProperties() & STAP_ALLOW_NONCLIENT))
    {
        if (pwndData->hthemeWindow)
        {
            CloseThemeData(pwndData->hthemeWindow);
            pwndData->hthemeWindow = ((void*)0);
        }
        return ((void*)0);
    }


    if (!pwndData->hthemeWindow)
        pwndData->hthemeWindow = OpenThemeDataEx(hWnd, L"WINDOW", OTD_NONCLIENT);

    return pwndData->hthemeWindow;
}
