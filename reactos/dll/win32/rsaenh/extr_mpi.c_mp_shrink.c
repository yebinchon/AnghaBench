
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alloc; int used; int * dp; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int GetProcessHeap () ;
 int * HeapReAlloc (int ,int ,int *,int) ;
 int MP_MEM ;
 int MP_OKAY ;

int mp_shrink (mp_int * a)
{
  mp_digit *tmp;
  if (a->alloc != a->used && a->used > 0) {
    if ((tmp = HeapReAlloc(GetProcessHeap(), 0, a->dp, sizeof (mp_digit) * a->used)) == ((void*)0)) {
      return MP_MEM;
    }
    a->dp = tmp;
    a->alloc = a->used;
  }
  return MP_OKAY;
}
