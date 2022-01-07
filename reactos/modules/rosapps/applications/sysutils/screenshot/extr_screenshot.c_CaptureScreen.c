
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hSelf; scalar_t__ Height; scalar_t__ Width; int hDC; int * hBitmap; } ;
struct TYPE_5__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__* PSCREENSHOT ;
typedef int HDC ;
typedef int BOOL ;


 int BitBlt (int ,int ,int ,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 int * CreateCompatibleBitmap (int ,scalar_t__,scalar_t__) ;
 int CreateCompatibleDC (int ) ;
 int FALSE ;
 int GetDC (int ) ;
 int GetError () ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int ReleaseDC (int ,int ) ;
 int SRCCOPY ;
 int SelectObject (int ,int *) ;
 int TRUE ;

__attribute__((used)) static BOOL
CaptureScreen(PSCREENSHOT pScrSht)
{
    HDC ScreenDC;
    RECT rect;





    GetWindowRect(pScrSht->hSelf, &rect);
    pScrSht->Width = rect.right - rect.left;
    pScrSht->Height = rect.bottom - rect.top;


    if (!(ScreenDC = GetDC(pScrSht->hSelf)))
        return FALSE;



    pScrSht->hBitmap = CreateCompatibleBitmap(ScreenDC,
                                              pScrSht->Width,
                                              pScrSht->Height);
    if (pScrSht->hBitmap == ((void*)0))
    {
        GetError();
        ReleaseDC(pScrSht->hSelf, ScreenDC);
        return FALSE;
    }


    if (!(pScrSht->hDC = CreateCompatibleDC(ScreenDC)))
    {
        GetError();
        ReleaseDC(pScrSht->hSelf, ScreenDC);
        return FALSE;
    }


    SelectObject(pScrSht->hDC,
                 pScrSht->hBitmap);


    BitBlt(pScrSht->hDC,
           0,
           0,
           pScrSht->Width,
           pScrSht->Height,
           ScreenDC,
           0,
           0,
           SRCCOPY);


    ReleaseDC(pScrSht->hSelf, ScreenDC);

    return TRUE;
}
