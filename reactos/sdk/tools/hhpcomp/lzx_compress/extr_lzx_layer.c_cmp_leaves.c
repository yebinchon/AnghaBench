
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct h_elem {scalar_t__ freq; int sym; } ;



__attribute__((used)) static int cmp_leaves(const void *in_a, const void *in_b)
{
  const struct h_elem *a = in_a;
  const struct h_elem *b = in_b;

  if (!a->freq && b->freq)
    return 1;
  if (a->freq && !b->freq)
    return -1;

  if (a->freq == b->freq)
    return a->sym - b->sym;

  return a->freq - b->freq;
}
