
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; int fmtetc_cnt; TYPE_1__ IEnumFORMATETC_iface; int fmtetc; scalar_t__ cur; } ;
typedef TYPE_1__ IEnumFORMATETC ;
typedef int HRESULT ;
typedef int FORMATETC ;
typedef TYPE_2__ EnumFormatImpl ;


 int GMEM_ZEROINIT ;
 int GlobalAlloc (int ,int) ;
 int S_OK ;
 int TRACE (char*) ;
 int VT_EnumFormatImpl ;
 TYPE_2__* heap_alloc (int) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static HRESULT EnumFormatImpl_Create(const FORMATETC *fmtetc, UINT fmtetc_cnt,
                                     IEnumFORMATETC **formatetc)
{
    EnumFormatImpl *ret;
    TRACE("\n");

    ret = heap_alloc(sizeof(EnumFormatImpl));
    ret->IEnumFORMATETC_iface.lpVtbl = &VT_EnumFormatImpl;
    ret->ref = 1;
    ret->cur = 0;
    ret->fmtetc_cnt = fmtetc_cnt;
    ret->fmtetc = GlobalAlloc(GMEM_ZEROINIT, fmtetc_cnt*sizeof(FORMATETC));
    memcpy(ret->fmtetc, fmtetc, fmtetc_cnt*sizeof(FORMATETC));
    *formatetc = &ret->IEnumFORMATETC_iface;
    return S_OK;
}
