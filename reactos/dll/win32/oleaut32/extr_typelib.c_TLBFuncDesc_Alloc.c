
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int TLBFuncDesc ;


 int TLBFuncDesc_Constructor (int *) ;
 int * heap_alloc_zero (int) ;

__attribute__((used)) static TLBFuncDesc *TLBFuncDesc_Alloc(UINT n)
{
    TLBFuncDesc *ret;

    ret = heap_alloc_zero(sizeof(TLBFuncDesc) * n);
    if(!ret)
        return ((void*)0);

    while(n){
        TLBFuncDesc_Constructor(&ret[n-1]);
        --n;
    }

    return ret;
}
