
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ ITextPara_iface; int * range; } ;
typedef int ITextRange ;
typedef TYPE_1__ ITextParaImpl ;
typedef TYPE_2__ ITextPara ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int ITextRange_AddRef (int *) ;
 int S_OK ;
 TYPE_1__* heap_alloc (int) ;
 int textparavtbl ;

__attribute__((used)) static HRESULT create_textpara(ITextRange *range, ITextPara **ret)
{
    ITextParaImpl *para;

    *ret = ((void*)0);
    para = heap_alloc(sizeof(*para));
    if (!para)
        return E_OUTOFMEMORY;

    para->ITextPara_iface.lpVtbl = &textparavtbl;
    para->ref = 1;
    para->range = range;
    ITextRange_AddRef(range);

    *ret = &para->ITextPara_iface;
    return S_OK;
}
