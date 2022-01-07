
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OLE_XSIZE_HIMETRIC ;
typedef int INT ;
typedef int HDC ;


 int GetDeviceCaps (int ,int ) ;
 int LOGPIXELSX ;
 int MulDiv (int ,int,int ) ;

__attribute__((used)) static inline OLE_XSIZE_HIMETRIC xpixels_to_himetric(INT pixels, HDC hdc)
{
    return MulDiv(pixels, 2540, GetDeviceCaps(hdc, LOGPIXELSX));
}
