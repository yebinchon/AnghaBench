
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int * HWND ;
typedef int DWORD ;


 int * CreateWindowExW (int ,int ,char const*,int ,int,int,int,int,int *,int *,int ,int *) ;
 int WC_EDITW ;
 int hinst ;
 int ok (int ,char*) ;

__attribute__((used)) static HWND create_editcontrolW(DWORD style, DWORD exstyle)
{
    static const WCHAR testtextW[] = {'T','e','s','t',' ','t','e','x','t',0};
    HWND handle;

    handle = CreateWindowExW(exstyle, WC_EDITW, testtextW, style, 10, 10, 300, 300,
        ((void*)0), ((void*)0), hinst, ((void*)0));
    ok(handle != ((void*)0), "Failed to create Edit control.\n");
    return handle;
}
