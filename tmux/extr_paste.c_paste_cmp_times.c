
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct paste_buffer {scalar_t__ order; } ;



__attribute__((used)) static int
paste_cmp_times(const struct paste_buffer *a, const struct paste_buffer *b)
{
 if (a->order > b->order)
  return (-1);
 if (a->order < b->order)
  return (1);
 return (0);
}
