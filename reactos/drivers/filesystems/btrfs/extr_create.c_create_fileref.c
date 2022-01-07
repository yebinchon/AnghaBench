
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int refcount; TYPE_9__* nonpaged; int children; } ;
typedef TYPE_1__ file_ref ;
struct TYPE_11__ {int fileref_lookaside; int fileref_np_lookaside; } ;
typedef TYPE_2__ device_extension ;
struct TYPE_12__ {int fileref_lock; } ;


 int ERR (char*) ;
 TYPE_9__* ExAllocateFromNPagedLookasideList (int *) ;
 TYPE_1__* ExAllocateFromPagedLookasideList (int *) ;
 int ExFreeToPagedLookasideList (int *,TYPE_1__*) ;
 int ExInitializeResourceLite (int *) ;
 int InitializeListHead (int *) ;
 int RtlZeroMemory (TYPE_1__*,int) ;
 int WARN (char*,TYPE_1__*) ;

file_ref* create_fileref(device_extension* Vcb) {
    file_ref* fr;

    fr = ExAllocateFromPagedLookasideList(&Vcb->fileref_lookaside);
    if (!fr) {
        ERR("out of memory\n");
        return ((void*)0);
    }

    RtlZeroMemory(fr, sizeof(file_ref));

    fr->nonpaged = ExAllocateFromNPagedLookasideList(&Vcb->fileref_np_lookaside);
    if (!fr->nonpaged) {
        ERR("out of memory\n");
        ExFreeToPagedLookasideList(&Vcb->fileref_lookaside, fr);
        return ((void*)0);
    }

    fr->refcount = 1;





    InitializeListHead(&fr->children);

    ExInitializeResourceLite(&fr->nonpaged->fileref_lock);

    return fr;
}
