
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int jobs; } ;
typedef TYPE_1__ Transaction ;


 int assert (int ) ;
 int free (TYPE_1__*) ;
 int hashmap_free (int ) ;
 int hashmap_isempty (int ) ;

void transaction_free(Transaction *tr) {
        assert(hashmap_isempty(tr->jobs));
        hashmap_free(tr->jobs);
        free(tr);
}
