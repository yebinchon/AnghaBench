
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cp_static_data_t ;
struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int * data; int iid; scalar_t__ sinks_size; int * sinks; int * container; TYPE_1__ IConnectionPoint_iface; } ;
typedef int REFIID ;
typedef int ConnectionPointContainer ;
typedef TYPE_2__ ConnectionPoint ;


 int ConnectionPointVtbl ;

__attribute__((used)) static void ConnectionPoint_Init(ConnectionPoint *cp, ConnectionPointContainer *container, REFIID riid, cp_static_data_t *data)
{
    cp->IConnectionPoint_iface.lpVtbl = &ConnectionPointVtbl;
    cp->container = container;
    cp->sinks = ((void*)0);
    cp->sinks_size = 0;
    cp->iid = riid;
    cp->data = data;
}
