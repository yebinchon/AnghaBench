
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int un_value; } ;
typedef TYPE_1__ unique_t ;
typedef int uint64_t ;
typedef int avl_index_t ;


 int KM_SLEEP ;
 int UNIQUE_MASK ;
 scalar_t__ avl_find (int *,TYPE_1__*,int *) ;
 int avl_insert (int *,TYPE_1__*,int ) ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int random_get_pseudo_bytes (void*,int) ;
 int unique_avl ;
 int unique_mtx ;

uint64_t
unique_insert(uint64_t value)
{
 avl_index_t idx;
 unique_t *un = kmem_alloc(sizeof (unique_t), KM_SLEEP);

 un->un_value = value;

 mutex_enter(&unique_mtx);
 while (un->un_value == 0 || un->un_value & ~UNIQUE_MASK ||
     avl_find(&unique_avl, un, &idx)) {
  mutex_exit(&unique_mtx);
  (void) random_get_pseudo_bytes((void*)&un->un_value,
      sizeof (un->un_value));
  un->un_value &= UNIQUE_MASK;
  mutex_enter(&unique_mtx);
 }

 avl_insert(&unique_avl, un, idx);
 mutex_exit(&unique_mtx);

 return (un->un_value);
}
