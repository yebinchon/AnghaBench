
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; int fmtetc_cnt; TYPE_1__ IDataObject_iface; int * fmtetc; int * hmfp; int * stg; int * stm; int text; } ;
typedef TYPE_1__* LPDATAOBJECT ;
typedef int HRESULT ;
typedef int HGLOBAL ;
typedef int FORMATETC ;
typedef TYPE_2__ DataObjectImpl ;


 int CF_TEXT ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int InitFormatEtc (int ,int ,int ) ;
 int S_OK ;
 int TYMED_HGLOBAL ;
 int VT_DataObjectImpl ;

__attribute__((used)) static HRESULT DataObjectImpl_CreateFromHGlobal(HGLOBAL text, LPDATAOBJECT *dataobj)
{
    DataObjectImpl *obj;

    obj = HeapAlloc(GetProcessHeap(), 0, sizeof(DataObjectImpl));
    obj->IDataObject_iface.lpVtbl = &VT_DataObjectImpl;
    obj->ref = 1;
    obj->text = text;
    obj->stm = ((void*)0);
    obj->stg = ((void*)0);
    obj->hmfp = ((void*)0);

    obj->fmtetc_cnt = 1;
    obj->fmtetc = HeapAlloc(GetProcessHeap(), 0, obj->fmtetc_cnt*sizeof(FORMATETC));
    InitFormatEtc(obj->fmtetc[0], CF_TEXT, TYMED_HGLOBAL);

    *dataobj = &obj->IDataObject_iface;
    return S_OK;
}
