
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alloc; int sign; scalar_t__ used; scalar_t__* dp; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 int MP_MEM ;
 int MP_OKAY ;
 int MP_PREC ;
 int MP_ZPOS ;

__attribute__((used)) static int mp_init (mp_int * a)
{
  int i;


  a->dp = HeapAlloc(GetProcessHeap(), 0, sizeof (mp_digit) * MP_PREC);
  if (a->dp == ((void*)0)) {
    return MP_MEM;
  }


  for (i = 0; i < MP_PREC; i++) {
      a->dp[i] = 0;
  }



  a->used = 0;
  a->alloc = MP_PREC;
  a->sign = MP_ZPOS;

  return MP_OKAY;
}
