
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; int device; } ;
typedef TYPE_1__ SwapEntry ;


 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;

SwapEntry* swap_entry_free(SwapEntry *se) {
        if (!se)
                return ((void*)0);

        free(se->device);
        free(se->type);

        return mfree(se);
}
