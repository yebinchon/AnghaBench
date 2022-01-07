
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avl_destroy (int *) ;
 int mutex_destroy (int *) ;
 int unique_avl ;
 int unique_mtx ;

void
unique_fini(void)
{
 avl_destroy(&unique_avl);
 mutex_destroy(&unique_mtx);
}
