
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HDC ;


 int GetLayout (int ) ;
 int LAYOUT_BITMAPORIENTATIONPRESERVED ;
 int LAYOUT_RTL ;
 int SetLayout (int ,int) ;

VOID PreserveBitmapInRTL(HDC hdc)
{
    if (GetLayout(hdc) == LAYOUT_RTL)
        SetLayout(hdc, LAYOUT_RTL | LAYOUT_BITMAPORIENTATIONPRESERVED);
}
