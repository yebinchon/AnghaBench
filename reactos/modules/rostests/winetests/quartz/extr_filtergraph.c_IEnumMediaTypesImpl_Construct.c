
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_4__ {int refCount; int cMediaTypes; TYPE_2__ IEnumMediaTypes_iface; int * pMediaTypes; scalar_t__ uIndex; } ;
typedef TYPE_1__ IEnumMediaTypesImpl ;
typedef TYPE_2__ IEnumMediaTypes ;
typedef int HRESULT ;
typedef int AM_MEDIA_TYPE ;


 void* CoTaskMemAlloc (int) ;
 int CoTaskMemFree (int *) ;
 int CopyMediaType (int *,int const*) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FreeMediaType (int *) ;
 int IEnumMediaTypesImpl_Vtbl ;
 int S_OK ;

__attribute__((used)) static HRESULT IEnumMediaTypesImpl_Construct(const AM_MEDIA_TYPE * pMediaTypes, ULONG cMediaTypes, IEnumMediaTypes ** ppEnum)
{
    ULONG i;
    IEnumMediaTypesImpl * pEnumMediaTypes = CoTaskMemAlloc(sizeof(IEnumMediaTypesImpl));

    if (!pEnumMediaTypes)
    {
        *ppEnum = ((void*)0);
        return E_OUTOFMEMORY;
    }
    pEnumMediaTypes->IEnumMediaTypes_iface.lpVtbl = &IEnumMediaTypesImpl_Vtbl;
    pEnumMediaTypes->refCount = 1;
    pEnumMediaTypes->uIndex = 0;
    pEnumMediaTypes->cMediaTypes = cMediaTypes;
    pEnumMediaTypes->pMediaTypes = CoTaskMemAlloc(sizeof(AM_MEDIA_TYPE) * cMediaTypes);
    for (i = 0; i < cMediaTypes; i++)
        if (FAILED(CopyMediaType(&pEnumMediaTypes->pMediaTypes[i], &pMediaTypes[i])))
        {
           while (i--)
              FreeMediaType(&pEnumMediaTypes->pMediaTypes[i]);
           CoTaskMemFree(pEnumMediaTypes->pMediaTypes);
           return E_OUTOFMEMORY;
        }
    *ppEnum = &pEnumMediaTypes->IEnumMediaTypes_iface;
    return S_OK;
}
