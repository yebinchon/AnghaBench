
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_11__ {int ref; int num_of_elems; TYPE_2__ IEnumSTATDATA_iface; int * holder; TYPE_1__* statdata; int index; } ;
struct TYPE_9__ {scalar_t__ pAdvSink; } ;
typedef TYPE_1__ STATDATA ;
typedef int IUnknown ;
typedef TYPE_2__ IEnumSTATDATA ;
typedef int HRESULT ;
typedef TYPE_3__ EnumSTATDATA ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int E_OUTOFMEMORY ;
 int EnumSTATDATA_VTable ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 int IUnknown_AddRef (int *) ;
 int S_OK ;
 int copy_statdata (TYPE_1__*,TYPE_1__*) ;

HRESULT EnumSTATDATA_Construct(IUnknown *holder, ULONG index, DWORD array_len, STATDATA *data,
                               BOOL copy, IEnumSTATDATA **ppenum)
{
    EnumSTATDATA *This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));
    DWORD i, count;

    if (!This) return E_OUTOFMEMORY;

    This->IEnumSTATDATA_iface.lpVtbl = &EnumSTATDATA_VTable;
    This->ref = 1;
    This->index = index;

    if (copy)
    {
        This->statdata = HeapAlloc(GetProcessHeap(), 0, array_len * sizeof(*This->statdata));
        if(!This->statdata)
        {
            HeapFree(GetProcessHeap(), 0, This);
            return E_OUTOFMEMORY;
        }

        for(i = 0, count = 0; i < array_len; i++)
        {
            if(data[i].pAdvSink)
            {
                copy_statdata(This->statdata + count, data + i);
                count++;
            }
        }
    }
    else
    {
        This->statdata = data;
        count = array_len;
    }

    This->num_of_elems = count;
    This->holder = holder;
    if (holder) IUnknown_AddRef(holder);
    *ppenum = &This->IEnumSTATDATA_iface;
    return S_OK;
}
