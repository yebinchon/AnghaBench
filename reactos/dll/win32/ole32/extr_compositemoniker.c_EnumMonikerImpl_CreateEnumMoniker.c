
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; int tabSize; int currentPos; TYPE_1__ IEnumMoniker_iface; int ** tabMoniker; } ;
typedef int IMoniker ;
typedef TYPE_1__ IEnumMoniker ;
typedef int HRESULT ;
typedef TYPE_2__ EnumMonikerImpl ;
typedef scalar_t__ BOOL ;


 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int IMoniker_AddRef (int *) ;
 int STG_E_INSUFFICIENTMEMORY ;
 int S_OK ;
 int VT_EnumMonikerImpl ;

__attribute__((used)) static HRESULT
EnumMonikerImpl_CreateEnumMoniker(IMoniker** tabMoniker, ULONG tabSize,
               ULONG currentPos, BOOL leftToRight, IEnumMoniker ** ppmk)
{
    EnumMonikerImpl* newEnumMoniker;
    ULONG i;

    if (currentPos > tabSize)
        return E_INVALIDARG;

    newEnumMoniker = HeapAlloc(GetProcessHeap(), 0, sizeof(EnumMonikerImpl));

    if (newEnumMoniker == 0)
        return STG_E_INSUFFICIENTMEMORY;


    newEnumMoniker->IEnumMoniker_iface.lpVtbl = &VT_EnumMonikerImpl;
    newEnumMoniker->ref = 1;

    newEnumMoniker->tabSize=tabSize;
    newEnumMoniker->currentPos=currentPos;

    newEnumMoniker->tabMoniker=HeapAlloc(GetProcessHeap(),0,tabSize*sizeof(newEnumMoniker->tabMoniker[0]));

    if (newEnumMoniker->tabMoniker==((void*)0)) {
        HeapFree(GetProcessHeap(), 0, newEnumMoniker);
        return E_OUTOFMEMORY;
    }

    if (leftToRight)
        for (i=0;i<tabSize;i++){

            newEnumMoniker->tabMoniker[i]=tabMoniker[i];
            IMoniker_AddRef(tabMoniker[i]);
        }
    else
        for (i = tabSize; i > 0; i--){

            newEnumMoniker->tabMoniker[tabSize-i]=tabMoniker[i - 1];
            IMoniker_AddRef(tabMoniker[i - 1]);
        }

    *ppmk=&newEnumMoniker->IEnumMoniker_iface;

    return S_OK;
}
