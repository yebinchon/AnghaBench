
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refcount; } ;
typedef TYPE_1__ calc_job ;
typedef scalar_t__ LONG ;


 int ExFreePool (TYPE_1__*) ;
 scalar_t__ InterlockedDecrement (int *) ;

void free_calc_job(calc_job* cj) {
    LONG rc = InterlockedDecrement(&cj->refcount);

    if (rc == 0)
        ExFreePool(cj);
}
