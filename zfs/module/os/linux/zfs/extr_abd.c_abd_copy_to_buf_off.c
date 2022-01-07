
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf_arg {void* member_0; } ;
typedef int abd_t ;


 int abd_copy_to_buf_off_cb ;
 int abd_iterate_func (int *,size_t,size_t,int ,struct buf_arg*) ;

void
abd_copy_to_buf_off(void *buf, abd_t *abd, size_t off, size_t size)
{
 struct buf_arg ba_ptr = { buf };

 (void) abd_iterate_func(abd, off, size, abd_copy_to_buf_off_cb,
     &ba_ptr);
}
