
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sizearray; int * array; } ;
typedef TYPE_1__ Table ;


 int MAXBITS ;
 int ttisnil (int *) ;

__attribute__((used)) static int numusearray (const Table *t, int *nums) {
  int lg;
  int ttlg;
  int ause = 0;
  int i = 1;
  for (lg=0, ttlg=1; lg<=MAXBITS; lg++, ttlg*=2) {
    int lc = 0;
    int lim = ttlg;
    if (lim > t->sizearray) {
      lim = t->sizearray;
      if (i > lim)
        break;
    }

    for (; i <= lim; i++) {
      if (!ttisnil(&t->array[i-1]))
        lc++;
    }
    nums[lg] += lc;
    ause += lc;
  }
  return ause;
}
