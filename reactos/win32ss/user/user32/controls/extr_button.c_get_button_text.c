
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int INT ;
typedef int HWND ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int InternalGetWindowText (int ,int *,int) ;

__attribute__((used)) static inline WCHAR *get_button_text( HWND hwnd )
{
    INT len = 512;
    WCHAR *buffer = HeapAlloc( GetProcessHeap(), 0, (len + 1) * sizeof(WCHAR) );
    if (buffer) InternalGetWindowText( hwnd, buffer, len + 1 );
    return buffer;
}
