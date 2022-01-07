
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ used; } ;
typedef TYPE_1__ mp_int ;


 int CHAR_BIT ;
 unsigned long DIGIT (TYPE_1__ const*,int) ;
 int DIGIT_BIT ;
 int MIN (scalar_t__,int) ;

unsigned long mp_get_int(const mp_int * a)
{
  int i;
  unsigned long res;

  if (a->used == 0) {
     return 0;
  }


  i = MIN(a->used,(int)((sizeof(unsigned long)*CHAR_BIT+DIGIT_BIT-1)/DIGIT_BIT))-1;


  res = DIGIT(a,i);

  while (--i >= 0) {
    res = (res << DIGIT_BIT) | DIGIT(a,i);
  }


  return res & 0xFFFFFFFFUL;
}
