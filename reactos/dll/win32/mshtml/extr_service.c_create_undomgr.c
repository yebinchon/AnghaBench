
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IOleUndoManager_iface; } ;
typedef TYPE_1__ UndoManager ;
typedef TYPE_2__ IOleUndoManager ;


 int OleUndoManagerVtbl ;
 TYPE_1__* heap_alloc (int) ;

__attribute__((used)) static IOleUndoManager *create_undomgr(void)
{
    UndoManager *ret = heap_alloc(sizeof(UndoManager));

    if (!ret) return ((void*)0);

    ret->IOleUndoManager_iface.lpVtbl = &OleUndoManagerVtbl;
    ret->ref = 1;

    return &ret->IOleUndoManager_iface;
}
