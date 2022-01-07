
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {size_t unit; scalar_t__ asize; scalar_t__ size; scalar_t__ data; } ;


 struct buf* malloc (int) ;

struct buf *
bufnew(size_t unit)
{
 struct buf *ret;
 ret = malloc(sizeof (struct buf));

 if (ret) {
  ret->data = 0;
  ret->size = ret->asize = 0;
  ret->unit = unit;
 }
 return ret;
}
