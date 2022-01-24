#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ used; } ;
typedef  TYPE_1__ mp_int ;

/* Variables and functions */
 int CHAR_BIT ; 
 unsigned long FUNC0 (TYPE_1__ const*,int) ; 
 int DIGIT_BIT ; 
 int FUNC1 (scalar_t__,int) ; 

unsigned long FUNC2(const mp_int * a)
{
  int i;
  unsigned long res;

  if (a->used == 0) {
     return 0;
  }

  /* get number of digits of the lsb we have to read */
  i = FUNC1(a->used,(int)((sizeof(unsigned long)*CHAR_BIT+DIGIT_BIT-1)/DIGIT_BIT))-1;

  /* get most significant digit of result */
  res = FUNC0(a,i);
   
  while (--i >= 0) {
    res = (res << DIGIT_BIT) | FUNC0(a,i);
  }

  /* force result to 32-bits always so it is consistent on non 32-bit platforms */
  return res & 0xFFFFFFFFUL;
}