
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; int max_cons; TYPE_2__ IOleAdviseHolder_iface; void* connections; } ;
typedef TYPE_1__ OleAdviseHolderImpl ;
typedef TYPE_2__ IOleAdviseHolder ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int INITIAL_SINKS ;
 int TRACE (char*,TYPE_2__*) ;
 int oahvt ;

__attribute__((used)) static IOleAdviseHolder *OleAdviseHolderImpl_Constructor(void)
{
  OleAdviseHolderImpl* lpoah;

  lpoah = HeapAlloc(GetProcessHeap(), 0, sizeof(OleAdviseHolderImpl));

  lpoah->IOleAdviseHolder_iface.lpVtbl = &oahvt;
  lpoah->ref = 1;
  lpoah->max_cons = INITIAL_SINKS;
  lpoah->connections = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY,
                                 lpoah->max_cons * sizeof(*lpoah->connections));

  TRACE("returning %p\n", &lpoah->IOleAdviseHolder_iface);
  return &lpoah->IOleAdviseHolder_iface;
}
