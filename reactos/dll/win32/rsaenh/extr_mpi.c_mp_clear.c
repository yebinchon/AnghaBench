
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int used; int alloc; int sign; scalar_t__* dp; } ;
typedef TYPE_1__ mp_int ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,scalar_t__*) ;
 int MP_ZPOS ;

__attribute__((used)) static void
mp_clear (mp_int * a)
{
  int i;


  if (a->dp != ((void*)0)) {

    for (i = 0; i < a->used; i++) {
        a->dp[i] = 0;
    }


    HeapFree(GetProcessHeap(), 0, a->dp);


    a->dp = ((void*)0);
    a->alloc = a->used = 0;
    a->sign = MP_ZPOS;
  }
}
