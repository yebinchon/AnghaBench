
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int HDC ;


 int GetDC (int *) ;
 int GetDeviceCaps (int ,int ) ;
 int LOGPIXELSX ;
 int ReleaseDC (int *,int ) ;

__attribute__((used)) static UINT32 get_pixelsperxlogicalinch(void)
{
    HDC hdc = GetDC( ((void*)0) );
    UINT32 ret;

    if (!hdc) return 96;
    ret = GetDeviceCaps( hdc, LOGPIXELSX );
    ReleaseDC( ((void*)0), hdc );
    return ret;
}
