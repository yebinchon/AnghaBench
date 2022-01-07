
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int custdata_list; } ;
typedef TYPE_1__ TLBParDesc ;


 TYPE_1__* heap_alloc_zero (int) ;
 int list_init (int *) ;

__attribute__((used)) static TLBParDesc *TLBParDesc_Constructor(UINT n)
{
    TLBParDesc *ret;

    ret = heap_alloc_zero(sizeof(TLBParDesc) * n);
    if(!ret)
        return ((void*)0);

    while(n){
        list_init(&ret[n-1].custdata_list);
        --n;
    }

    return ret;
}
