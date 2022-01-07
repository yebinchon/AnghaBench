
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * HINSTANCE ;


 int ARRAY_SIZE (int *) ;
 int * LoadLibrary (int *) ;
 int TEXT (char*) ;
 int _snwprintf (int *,int ,int ,int) ;

__attribute__((used)) static HINSTANCE Direct3D9LoadShaderLibrary(void)
{
    HINSTANCE instance = ((void*)0);
    for (int i = 43; i > 23; --i) {
        WCHAR filename[16];
        _snwprintf(filename, ARRAY_SIZE(filename), TEXT("D3dx9_%d.dll"), i);
        instance = LoadLibrary(filename);
        if (instance)
            break;
    }
    return instance;
}
