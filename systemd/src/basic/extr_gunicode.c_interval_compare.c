
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ unichar ;
struct Interval {scalar_t__ start; scalar_t__ end; } ;



__attribute__((used)) static int
interval_compare (const void *key, const void *elt)
{
  unichar c = (unichar) (long) (key);
  struct Interval *interval = (struct Interval *)elt;

  if (c < interval->start)
    return -1;
  if (c > interval->end)
    return +1;

  return 0;
}
