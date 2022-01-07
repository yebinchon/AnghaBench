
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * rck_clone; } ;
typedef TYPE_1__ remaining_clones_key_t ;
typedef int dsl_dataset_t ;


 int KM_SLEEP ;
 TYPE_1__* kmem_alloc (int,int ) ;

__attribute__((used)) static remaining_clones_key_t *
rck_alloc(dsl_dataset_t *clone)
{
 remaining_clones_key_t *rck = kmem_alloc(sizeof (*rck), KM_SLEEP);
 rck->rck_clone = clone;
 return (rck);
}
