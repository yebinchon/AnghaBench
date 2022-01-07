
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abd_t ;


 int abd_iterate_func (int *,size_t,size_t,int ,int *) ;
 int abd_zero_off_cb ;

void
abd_zero_off(abd_t *abd, size_t off, size_t size)
{
 (void) abd_iterate_func(abd, off, size, abd_zero_off_cb, ((void*)0));
}
