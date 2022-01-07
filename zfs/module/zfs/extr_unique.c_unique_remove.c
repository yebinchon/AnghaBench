
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int un_value; } ;
typedef TYPE_1__ unique_t ;
typedef int uint64_t ;


 TYPE_1__* avl_find (int *,TYPE_1__*,int *) ;
 int avl_remove (int *,TYPE_1__*) ;
 int kmem_free (TYPE_1__*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int unique_avl ;
 int unique_mtx ;

void
unique_remove(uint64_t value)
{
 unique_t un_tofind;
 unique_t *un;

 un_tofind.un_value = value;
 mutex_enter(&unique_mtx);
 un = avl_find(&unique_avl, &un_tofind, ((void*)0));
 if (un != ((void*)0)) {
  avl_remove(&unique_avl, un);
  kmem_free(un, sizeof (unique_t));
 }
 mutex_exit(&unique_mtx);
}
