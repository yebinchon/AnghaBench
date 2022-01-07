
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_3__ {scalar_t__ asize; int array; } ;
typedef int TValue ;
typedef TYPE_1__ GCtab ;


 unsigned int LJ_MAX_ABITS ;
 int tvisnil (int *) ;
 int * tvref (int ) ;

__attribute__((used)) static uint32_t countarray(const GCtab *t, uint32_t *bins)
{
  uint32_t na, b, i;
  if (t->asize == 0) return 0;
  for (na = i = b = 0; b < LJ_MAX_ABITS; b++) {
    uint32_t n, top = 2u << b;
    TValue *array;
    if (top >= t->asize) {
      top = t->asize-1;
      if (i > top)
 break;
    }
    array = tvref(t->array);
    for (n = 0; i <= top; i++)
      if (!tvisnil(&array[i]))
 n++;
    bins[b] += n;
    na += n;
  }
  return na;
}
