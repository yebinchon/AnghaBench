
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_13__ {TYPE_5__ IPersistHistory_iface; TYPE_4__ IPersistStreamInit_iface; TYPE_3__ IMonikerProp_iface; TYPE_2__ IPersistFile_iface; TYPE_1__ IPersistMoniker_iface; } ;
typedef TYPE_6__ HTMLDocument ;


 int MonikerPropVtbl ;
 int PersistFileVtbl ;
 int PersistHistoryVtbl ;
 int PersistMonikerVtbl ;
 int PersistStreamInitVtbl ;

void HTMLDocument_Persist_Init(HTMLDocument *This)
{
    This->IPersistMoniker_iface.lpVtbl = &PersistMonikerVtbl;
    This->IPersistFile_iface.lpVtbl = &PersistFileVtbl;
    This->IMonikerProp_iface.lpVtbl = &MonikerPropVtbl;
    This->IPersistStreamInit_iface.lpVtbl = &PersistStreamInitVtbl;
    This->IPersistHistory_iface.lpVtbl = &PersistHistoryVtbl;
}
