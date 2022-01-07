
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ start; scalar_t__ count; } ;
typedef TYPE_1__ Reindex ;



__attribute__((used)) static int compare_reindex(const void *a, const void *b)
{
 Reindex *ra = (Reindex *)a;
 Reindex *rb = (Reindex *)b;

 if (ra->start < rb->start)
  return -1;
 else if (ra->start > (rb->start + rb->count))
  return 1;
 else
  return 0;
}
