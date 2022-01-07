
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int allocated; scalar_t__ attr; } ;
typedef TYPE_1__ mxattributes ;
typedef int mxattribute ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 scalar_t__ heap_realloc (scalar_t__,int) ;

__attribute__((used)) static HRESULT mxattributes_grow(mxattributes *This)
{
    if (This->length < This->allocated) return S_OK;

    This->allocated *= 2;
    This->attr = heap_realloc(This->attr, This->allocated*sizeof(mxattribute));

    return This->attr ? S_OK : E_OUTOFMEMORY;
}
