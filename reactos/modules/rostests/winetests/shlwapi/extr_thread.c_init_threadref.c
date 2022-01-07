
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int * ref; TYPE_1__ IUnknown_iface; } ;
typedef TYPE_2__ threadref ;
typedef int LONG ;


 int threadref_vt ;

__attribute__((used)) static void init_threadref(threadref* iface, LONG *refcount)
{
  iface->IUnknown_iface.lpVtbl = &threadref_vt;
  iface->ref = refcount;
}
