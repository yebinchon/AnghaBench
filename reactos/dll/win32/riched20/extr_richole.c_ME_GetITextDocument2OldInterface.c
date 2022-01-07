
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ITextDocument2Old_iface; } ;
typedef int * LPVOID ;
typedef TYPE_1__ IRichEditOleImpl ;
typedef int IRichEditOle ;


 TYPE_1__* impl_from_IRichEditOle (int *) ;

void ME_GetITextDocument2OldInterface(IRichEditOle *iface, LPVOID *ppvObj)
{
    IRichEditOleImpl *This = impl_from_IRichEditOle(iface);
    *ppvObj = &This->ITextDocument2Old_iface;
}
