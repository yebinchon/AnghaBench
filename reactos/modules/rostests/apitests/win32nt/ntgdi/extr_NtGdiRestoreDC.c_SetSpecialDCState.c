
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;


 int GM_ADVANCED ;
 int MM_ANISOTROPIC ;
 int RGB (int,int,int) ;
 int SelectObject (int ,int ) ;
 int SetDCBrushColor (int ,int ) ;
 int SetDCPenColor (int ,int ) ;
 int SetGraphicsMode (int ,int ) ;
 int SetMapMode (int ,int ) ;
 int SetViewportExtEx (int ,int,int,int *) ;
 int SetViewportOrgEx (int ,int,int,int *) ;
 int SetWindowExtEx (int ,int,int,int *) ;
 int SetWindowOrgEx (int ,int,int,int *) ;
 int hbitmap ;
 int hbrush ;
 int hfont ;
 int hpen ;
 int hrgn ;

__attribute__((used)) static
void
SetSpecialDCState(HDC hdc)
{

    SelectObject(hdc, hbrush);
    SelectObject(hdc, hpen);
    SelectObject(hdc, hbitmap);
    SelectObject(hdc, hfont);
    SelectObject(hdc, hrgn);


    SetDCBrushColor(hdc, RGB(12,34,56));
    SetDCPenColor(hdc, RGB(23,34,45));


    SetMapMode(hdc, MM_ANISOTROPIC);
    SetGraphicsMode(hdc, GM_ADVANCED);
    SetWindowOrgEx(hdc, 12, 34, ((void*)0));
    SetViewportOrgEx(hdc, 56, 78, ((void*)0));
    SetWindowExtEx(hdc, 123, 456, ((void*)0));
    SetViewportExtEx(hdc, 234, 567, ((void*)0));



}
