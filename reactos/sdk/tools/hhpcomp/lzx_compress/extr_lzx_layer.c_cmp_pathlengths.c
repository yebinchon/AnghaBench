
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct h_elem {scalar_t__ pathlength; int sym; } ;



__attribute__((used)) static int
cmp_pathlengths(const void *in_a, const void *in_b)
{
  const struct h_elem *a = in_a;
  const struct h_elem *b = in_b;

  if (a->pathlength == b->pathlength)




    return b->sym - a->sym;

  return b->pathlength - a->pathlength;
}
