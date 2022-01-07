
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;



__attribute__((used)) static uint64_t
single_histo_average(uint64_t *histo, unsigned int buckets)
{
 int i;
 uint64_t count = 0, total = 0;

 for (i = 0; i < buckets; i++) {
  if (histo[i] != 0) {
   total += histo[i] * (((1UL << i) + ((1UL << i)/2)));
   count += histo[i];
  }
 }


 return (count == 0 ? 0 : total / count);
}
