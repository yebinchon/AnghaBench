
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; int fmtetc_cnt; TYPE_1__ IEnumFORMATETC_iface; void* fmtetc; scalar_t__ cur; } ;
typedef TYPE_1__ IEnumFORMATETC ;
typedef int HRESULT ;
typedef int FORMATETC ;
typedef TYPE_2__ EnumFormatImpl ;


 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int VT_EnumFormatImpl ;
 int memcpy (void*,int *,int) ;

__attribute__((used)) static HRESULT EnumFormatImpl_Create(FORMATETC *fmtetc, UINT fmtetc_cnt, IEnumFORMATETC **lplpformatetc)
{
    EnumFormatImpl *ret;

    ret = HeapAlloc(GetProcessHeap(), 0, sizeof(EnumFormatImpl));
    ret->IEnumFORMATETC_iface.lpVtbl = &VT_EnumFormatImpl;
    ret->ref = 1;
    ret->cur = 0;
    ret->fmtetc_cnt = fmtetc_cnt;
    ret->fmtetc = HeapAlloc(GetProcessHeap(), 0, fmtetc_cnt*sizeof(FORMATETC));
    memcpy(ret->fmtetc, fmtetc, fmtetc_cnt*sizeof(FORMATETC));
    *lplpformatetc = &ret->IEnumFORMATETC_iface;
    return S_OK;
}
