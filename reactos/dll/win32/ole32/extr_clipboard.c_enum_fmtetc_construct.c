
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ole_priv_data ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_2__ IEnumFORMATETC_iface; int pos; int * data; } ;
typedef TYPE_1__ enum_fmtetc ;
typedef int UINT ;
typedef TYPE_2__ IEnumFORMATETC ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*) ;
 int efvt ;

__attribute__((used)) static HRESULT enum_fmtetc_construct(ole_priv_data *data, UINT pos, IEnumFORMATETC **obj)
{
  enum_fmtetc* ef;

  *obj = ((void*)0);
  ef = HeapAlloc(GetProcessHeap(), 0, sizeof(*ef));
  if (!ef) return E_OUTOFMEMORY;

  ef->ref = 1;
  ef->IEnumFORMATETC_iface.lpVtbl = &efvt;
  ef->data = data;
  ef->pos = pos;

  TRACE("(%p)->()\n", ef);
  *obj = &ef->IEnumFORMATETC_iface;
  return S_OK;
}
