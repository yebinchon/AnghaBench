
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * HINSTANCE ;


 int * LoadLibrary (int *) ;
 int TEXT (char*) ;
 int _snwprintf (int *,int,int ,int) ;

__attribute__((used)) static HINSTANCE Direct3D11LoadShaderLibrary(void)
{
    HINSTANCE instance = ((void*)0);

    for (int i = 47; i > 41; --i) {
        WCHAR filename[19];
        _snwprintf(filename, 19, TEXT("D3DCOMPILER_%d.dll"), i);
        instance = LoadLibrary(filename);
        if (instance) break;
    }
    return instance;
}
