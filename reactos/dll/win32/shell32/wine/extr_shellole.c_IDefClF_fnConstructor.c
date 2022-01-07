
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; int riidInst; scalar_t__ pcRefDll; int lpfnCI; TYPE_1__ IClassFactory_iface; } ;
typedef int REFIID ;
typedef scalar_t__ PLONG ;
typedef int LPFNCREATEINSTANCE ;
typedef int * LPCLASSFACTORY ;
typedef TYPE_2__ IDefClFImpl ;
typedef int IClassFactory ;


 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int InterlockedIncrement (scalar_t__) ;
 int TRACE (char*,TYPE_2__*,int ) ;
 int dclfvt ;
 int shdebugstr_guid (int ) ;

__attribute__((used)) static IClassFactory * IDefClF_fnConstructor(LPFNCREATEINSTANCE lpfnCI, PLONG pcRefDll, REFIID riidInst)
{
 IDefClFImpl* lpclf;

 lpclf = HeapAlloc(GetProcessHeap(),0,sizeof(IDefClFImpl));
 lpclf->ref = 1;
 lpclf->IClassFactory_iface.lpVtbl = &dclfvt;
 lpclf->lpfnCI = lpfnCI;
 lpclf->pcRefDll = pcRefDll;

 if (pcRefDll) InterlockedIncrement(pcRefDll);
 lpclf->riidInst = riidInst;

 TRACE("(%p)%s\n",lpclf, shdebugstr_guid(riidInst));
 return (LPCLASSFACTORY)lpclf;
}
