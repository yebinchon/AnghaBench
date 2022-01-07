
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int LPCSTR ;
typedef scalar_t__ HINSTANCE ;
typedef scalar_t__ HICON ;
typedef int DWORD ;


 int IMAGE_ICON ;
 int LR_SHARED ;
 scalar_t__ LoadCursorA (scalar_t__,int ) ;
 scalar_t__ LoadIconA (scalar_t__,int ) ;
 scalar_t__ LoadImageA (scalar_t__,int ,int ,int ,int ,int ) ;
 int SS_REALSIZEIMAGE ;

__attribute__((used)) static HICON STATIC_LoadIconA( HINSTANCE hInstance, LPCSTR name, DWORD style )
{
    HICON hicon = 0;

    if (hInstance && ((ULONG_PTR)hInstance >> 16))
    {
        if ((style & SS_REALSIZEIMAGE) != 0)
            hicon = LoadImageA(hInstance, name, IMAGE_ICON, 0, 0, LR_SHARED);
        else
        {
            hicon = LoadIconA( hInstance, name );
            if (!hicon) hicon = LoadCursorA( hInstance, name );
        }
    }
    if (!hicon) hicon = LoadIconA( 0, name );



    return hicon;
}
