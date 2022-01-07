
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int next_range(int *table, int size, int k)
{
 int n;
 for (n = 1; k + n < size; ++n)
 {
  if ((k & 0xFF00) != ((k+n) & 0xFF00))
   break;
  if (table[k] + n != table[k+n])
   break;
 }
 return n;
}
