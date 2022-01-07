
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stop {float offset; int index; } ;



__attribute__((used)) static int cmp_stop(const void *a, const void *b)
{
 const struct stop *astop = a;
 const struct stop *bstop = b;
 float diff = astop->offset - bstop->offset;
 if (diff < 0)
  return -1;
 if (diff > 0)
  return 1;
 return astop->index - bstop->index;
}
