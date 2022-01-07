
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abd_t ;


 int abd_copy_off_cb ;
 int abd_iterate_func2 (int *,int *,size_t,size_t,size_t,int ,int *) ;

void
abd_copy_off(abd_t *dabd, abd_t *sabd, size_t doff, size_t soff, size_t size)
{
 (void) abd_iterate_func2(dabd, sabd, doff, soff, size,
     abd_copy_off_cb, ((void*)0));
}
