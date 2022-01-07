
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mbcodepage; } ;


 int HIBYTE (unsigned int) ;
 int LOBYTE (unsigned int) ;
 TYPE_1__* get_mbcinfo () ;

unsigned int _mbcjistojms(unsigned int c)
{


  if(get_mbcinfo()->mbcodepage == 932)
  {
    if(HIBYTE(c) >= 0x21 && HIBYTE(c) <= 0x7e &&
       LOBYTE(c) >= 0x21 && LOBYTE(c) <= 0x7e)
    {
      if(HIBYTE(c) % 2)
        c += 0x1f;
      else
        c += 0x7d;

      if(LOBYTE(c) >= 0x7F)
        c += 0x1;

      c = (((HIBYTE(c) - 0x21)/2 + 0x81) << 8) | LOBYTE(c);

      if(HIBYTE(c) > 0x9f)
        c += 0x4000;
    }
    else
      return 0;
  }

  return c;
}
