
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int TLBVarDesc ;


 int TLBVarDesc_Constructor (int *) ;
 int * heap_alloc_zero (int) ;

__attribute__((used)) static TLBVarDesc *TLBVarDesc_Alloc(UINT n)
{
    TLBVarDesc *ret;

    ret = heap_alloc_zero(sizeof(TLBVarDesc) * n);
    if(!ret)
        return ((void*)0);

    while(n){
        TLBVarDesc_Constructor(&ret[n-1]);
        --n;
    }

    return ret;
}
