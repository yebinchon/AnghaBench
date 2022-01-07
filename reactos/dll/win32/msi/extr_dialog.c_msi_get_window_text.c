
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef scalar_t__ LPWSTR ;
typedef int HWND ;


 int GetWindowTextW (int ,scalar_t__,int) ;
 scalar_t__ msi_alloc (int) ;
 scalar_t__ msi_realloc (scalar_t__,int) ;

__attribute__((used)) static LPWSTR msi_get_window_text( HWND hwnd )
{
    UINT sz, r;
    LPWSTR buf;

    sz = 0x20;
    buf = msi_alloc( sz*sizeof(WCHAR) );
    while ( buf )
    {
        r = GetWindowTextW( hwnd, buf, sz );
        if ( r < (sz - 1) )
            break;
        sz *= 2;
        buf = msi_realloc( buf, sz*sizeof(WCHAR) );
    }

    return buf;
}
