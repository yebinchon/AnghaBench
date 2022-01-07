
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_4__ {int jobs; } ;
typedef TYPE_1__ Transaction ;
typedef int Job ;


 int * hashmap_get (int ,int *) ;
 int transaction_delete_job (TYPE_1__*,int *,int) ;

__attribute__((used)) static void transaction_delete_unit(Transaction *tr, Unit *u) {
        Job *j;




        while ((j = hashmap_get(tr->jobs, u)))
                transaction_delete_job(tr, j, 1);
}
