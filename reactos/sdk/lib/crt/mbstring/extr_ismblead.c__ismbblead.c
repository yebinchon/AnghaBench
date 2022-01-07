
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* mbctype; } ;


 int _M1 ;
 TYPE_1__* get_mbcinfo () ;

int _ismbblead(unsigned int c)
{
  return (get_mbcinfo()->mbctype[(c&0xff) + 1] & _M1) != 0;
}
