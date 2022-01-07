
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IUnknown_inner; void* bAggregatable; int * outer_unk; void* bUnkOuterValid; } ;
typedef int REFIID ;
typedef TYPE_1__ PassThruImpl ;
typedef int * LPVOID ;
typedef int HRESULT ;


 int E_NOINTERFACE ;
 int IID_IUnknown ;
 int IUnknown_AddRef (int *) ;
 int IUnknown_QueryInterface (int *,int ,int **) ;
 int IUnknown_Release (int *) ;
 scalar_t__ IsEqualIID (int ,int *) ;
 void* TRUE ;

__attribute__((used)) static HRESULT SeekOuter_QueryInterface(PassThruImpl *This, REFIID riid, LPVOID *ppv)
{
    if (This->bAggregatable)
        This->bUnkOuterValid = TRUE;

    if (This->outer_unk)
    {
        if (This->bAggregatable)
            return IUnknown_QueryInterface(This->outer_unk, riid, ppv);

        if (IsEqualIID(riid, &IID_IUnknown))
        {
            HRESULT hr;

            IUnknown_AddRef(&This->IUnknown_inner);
            hr = IUnknown_QueryInterface(&This->IUnknown_inner, riid, ppv);
            IUnknown_Release(&This->IUnknown_inner);
            This->bAggregatable = TRUE;
            return hr;
        }

        *ppv = ((void*)0);
        return E_NOINTERFACE;
    }

    return IUnknown_QueryInterface(&This->IUnknown_inner, riid, ppv);
}
