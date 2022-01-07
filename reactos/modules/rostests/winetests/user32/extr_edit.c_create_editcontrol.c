
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HWND ;
typedef int DWORD ;


 int * CreateWindowExA (int ,char*,char*,int ,int,int,int,int,int *,int *,int ,int *) ;
 int SW_SHOW ;
 int ShowWindow (int *,int ) ;
 int assert (int *) ;
 int hinst ;
 int ok (int ,char*) ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static HWND create_editcontrol (DWORD style, DWORD exstyle)
{
    HWND handle;

    handle = CreateWindowExA(exstyle,
     "EDIT",
     "Test Text",
     style,
     10, 10, 300, 300,
     ((void*)0), ((void*)0), hinst, ((void*)0));
    ok (handle != ((void*)0), "CreateWindow EDIT Control failed\n");
    assert (handle);
    if (winetest_interactive)
 ShowWindow (handle, SW_SHOW);
    return handle;
}
