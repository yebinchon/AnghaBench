
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int jobs; } ;
typedef TYPE_1__ Transaction ;
typedef int Job ;


 int assert (TYPE_1__*) ;
 int * hashmap_first (int ) ;
 TYPE_1__* hashmap_isempty (int ) ;
 int transaction_delete_job (TYPE_1__*,int *,int) ;

void transaction_abort(Transaction *tr) {
        Job *j;

        assert(tr);

        while ((j = hashmap_first(tr->jobs)))
                transaction_delete_job(tr, j, 0);

        assert(hashmap_isempty(tr->jobs));
}
