
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alloc; scalar_t__* dp; } ;
typedef TYPE_1__ mp_int ;
typedef scalar_t__ mp_digit ;


 int GetProcessHeap () ;
 scalar_t__* HeapReAlloc (int ,int ,scalar_t__*,int) ;
 int MP_MEM ;
 int MP_OKAY ;
 int MP_PREC ;

__attribute__((used)) static int mp_grow (mp_int * a, int size)
{
  int i;
  mp_digit *tmp;


  if (a->alloc < size) {

    size += (MP_PREC * 2) - (size % MP_PREC);







    tmp = HeapReAlloc(GetProcessHeap(), 0, a->dp, sizeof (mp_digit) * size);
    if (tmp == ((void*)0)) {

      return MP_MEM;
    }


    a->dp = tmp;


    i = a->alloc;
    a->alloc = size;
    for (; i < a->alloc; i++) {
      a->dp[i] = 0;
    }
  }
  return MP_OKAY;
}
