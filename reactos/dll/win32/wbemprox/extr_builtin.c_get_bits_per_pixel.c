
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef void* UINT ;
typedef int HDC ;


 int BITSPIXEL ;
 int GetDC (int *) ;
 void* GetDeviceCaps (int ,int ) ;
 int HORZRES ;
 int ReleaseDC (int *,int ) ;
 int VERTRES ;

__attribute__((used)) static UINT32 get_bits_per_pixel( UINT *hres, UINT *vres )
{
    HDC hdc = GetDC( ((void*)0) );
    UINT32 ret;

    if (!hdc) return 32;
    ret = GetDeviceCaps( hdc, BITSPIXEL );
    *hres = GetDeviceCaps( hdc, HORZRES );
    *vres = GetDeviceCaps( hdc, VERTRES );
    ReleaseDC( ((void*)0), hdc );
    return ret;
}
