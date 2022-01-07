
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int TLBImplType ;


 int TLBImplType_Constructor (int *) ;
 int * heap_alloc_zero (int) ;

__attribute__((used)) static TLBImplType *TLBImplType_Alloc(UINT n)
{
    TLBImplType *ret;

    ret = heap_alloc_zero(sizeof(TLBImplType) * n);
    if(!ret)
        return ((void*)0);

    while(n){
        TLBImplType_Constructor(&ret[n-1]);
        --n;
    }

    return ret;
}
