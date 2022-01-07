
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abd_t ;


 int abd_copy_from_buf (int *,void*,size_t) ;
 int abd_is_linear (int *) ;
 int abd_return_buf (int *,void*,size_t) ;

void
abd_return_buf_copy(abd_t *abd, void *buf, size_t n)
{
 if (!abd_is_linear(abd)) {
  abd_copy_from_buf(abd, buf, n);
 }
 abd_return_buf(abd, buf, n);
}
