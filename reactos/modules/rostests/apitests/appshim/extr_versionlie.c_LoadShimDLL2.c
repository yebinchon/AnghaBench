
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tGETHOOKAPIS ;
typedef int PCWSTR ;
typedef int HMODULE ;


 scalar_t__ LoadShimDLL (int ,int *,int **) ;
 int skip (char*) ;

tGETHOOKAPIS LoadShimDLL2(PCWSTR ShimDll)
{
    HMODULE module;
    tGETHOOKAPIS pGetHookAPIs;

    if (LoadShimDLL(ShimDll, &module, &pGetHookAPIs))
    {
        if (!pGetHookAPIs)
            skip("No GetHookAPIs found\n");
        return pGetHookAPIs;
    }
    return ((void*)0);
}
