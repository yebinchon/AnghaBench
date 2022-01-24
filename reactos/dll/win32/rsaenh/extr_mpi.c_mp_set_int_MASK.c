#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned long* dp; int used; } ;
typedef  TYPE_1__ mp_int ;

/* Variables and functions */
 int MP_OKAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int FUNC3 (mp_int * a, unsigned long b)
{
  int     x, res;

  FUNC2 (a);
  
  /* set four bits at a time */
  for (x = 0; x < 8; x++) {
    /* shift the number up four bits */
    if ((res = FUNC1 (a, 4, a)) != MP_OKAY) {
      return res;
    }

    /* OR in the top four bits of the source */
    a->dp[0] |= (b >> 28) & 15;

    /* shift the source up to the next four bits */
    b <<= 4;

    /* ensure that digits are not clamped off */
    a->used += 1;
  }
  FUNC0 (a);
  return MP_OKAY;
}