
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;


 int DC_BRUSH ;
 int DC_PEN ;
 int DEFAULT_BITMAP ;
 int DEFAULT_GUI_FONT ;
 int GM_COMPATIBLE ;
 int GetStockObject (int ) ;
 int MM_ISOTROPIC ;
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
 int hrgn2 ;

__attribute__((used)) static
void
SetSpecialDCState2(HDC hdc)
{

    SelectObject(hdc, GetStockObject(DC_BRUSH));
    SelectObject(hdc, GetStockObject(DC_PEN));
    SelectObject(hdc, GetStockObject(DEFAULT_BITMAP));
    SelectObject(hdc, GetStockObject(DEFAULT_GUI_FONT));
    SelectObject(hdc, hrgn2);


    SetDCBrushColor(hdc, RGB(65,43,21));
    SetDCPenColor(hdc, RGB(54,43,32));


    SetMapMode(hdc, MM_ISOTROPIC);
    SetGraphicsMode(hdc, GM_COMPATIBLE);
    SetWindowOrgEx(hdc, 43, 21, ((void*)0));
    SetViewportOrgEx(hdc, 87, 65, ((void*)0));
    SetWindowExtEx(hdc, 654, 321, ((void*)0));
    SetViewportExtEx(hdc, 765, 432, ((void*)0));


}
