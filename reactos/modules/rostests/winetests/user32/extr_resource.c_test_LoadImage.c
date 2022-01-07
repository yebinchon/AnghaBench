
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef int * HRSRC ;
typedef int * HBITMAP ;


 int DeleteObject (int *) ;
 int * FindResourceA (int ,char*,int ) ;
 int GetModuleHandleA (int *) ;
 int * LoadBitmapA (int ,char*) ;
 char* MAKEINTRESOURCEA (int) ;
 scalar_t__ RT_BITMAP ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_LoadImage(void)
{
    HBITMAP bmp;
    HRSRC hres;

    bmp = LoadBitmapA(GetModuleHandleA(((void*)0)), MAKEINTRESOURCEA(100));
    ok(bmp != ((void*)0), "Could not load a bitmap resource\n");
    if (bmp) DeleteObject(bmp);

    hres = FindResourceA(GetModuleHandleA(((void*)0)), "#100", (LPCSTR)RT_BITMAP);
    ok(hres != ((void*)0), "Could not find a bitmap resource with a numeric string\n");

    bmp = LoadBitmapA(GetModuleHandleA(((void*)0)), "#100");
    ok(bmp != ((void*)0), "Could not load a bitmap resource with a numeric string\n");
    if (bmp) DeleteObject(bmp);
}
