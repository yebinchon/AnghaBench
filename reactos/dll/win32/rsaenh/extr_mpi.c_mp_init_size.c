
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alloc; scalar_t__* dp; int sign; scalar_t__ used; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 int MP_MEM ;
 int MP_OKAY ;
 int MP_PREC ;
 int MP_ZPOS ;

__attribute__((used)) static int mp_init_size (mp_int * a, int size)
{
  int x;


  size += (MP_PREC * 2) - (size % MP_PREC);


  a->dp = HeapAlloc(GetProcessHeap(), 0, sizeof (mp_digit) * size);
  if (a->dp == ((void*)0)) {
    return MP_MEM;
  }


  a->used = 0;
  a->alloc = size;
  a->sign = MP_ZPOS;


  for (x = 0; x < size; x++) {
      a->dp[x] = 0;
  }

  return MP_OKAY;
}
