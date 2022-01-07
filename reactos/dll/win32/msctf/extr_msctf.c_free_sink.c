
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pIUnknown; } ;
struct TYPE_6__ {TYPE_1__ interfaces; int entry; } ;
typedef TYPE_2__ Sink ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int IUnknown_Release (int ) ;
 int list_remove (int *) ;

__attribute__((used)) static void free_sink(Sink *sink)
{
    list_remove(&sink->entry);
    IUnknown_Release(sink->interfaces.pIUnknown);
    HeapFree(GetProcessHeap(), 0, sink);
}
