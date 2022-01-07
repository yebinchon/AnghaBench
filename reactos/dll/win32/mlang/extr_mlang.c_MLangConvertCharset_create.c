
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lpVtbl; } ;
struct convert_charset {int ref; TYPE_1__ IMLangConvertCharset_iface; } ;
typedef int IUnknown ;
typedef int HRESULT ;


 int CLASS_E_NOAGGREGATION ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 struct convert_charset* HeapAlloc (int ,int ,int) ;
 int LockModule () ;
 int MLangConvertCharsetVtbl ;
 int S_OK ;

__attribute__((used)) static HRESULT MLangConvertCharset_create(IUnknown *outer, void **obj)
{
    struct convert_charset *convert;

    if (outer)
        return CLASS_E_NOAGGREGATION;

    *obj = ((void*)0);

    convert = HeapAlloc(GetProcessHeap(), 0, sizeof(struct convert_charset));
    if (!convert) return E_OUTOFMEMORY;

    convert->IMLangConvertCharset_iface.lpVtbl = &MLangConvertCharsetVtbl;
    convert->ref = 1;

    *obj = &convert->IMLangConvertCharset_iface;

    LockModule();

    return S_OK;
}
