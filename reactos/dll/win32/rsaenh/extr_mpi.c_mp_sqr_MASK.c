#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mp_word ;
struct TYPE_10__ {int used; int /*<<< orphan*/  sign; } ;
typedef  TYPE_1__ mp_int ;

/* Variables and functions */
 int CHAR_BIT ; 
 int DIGIT_BIT ; 
 int KARATSUBA_SQR_CUTOFF ; 
 int MP_WARRAY ; 
 int /*<<< orphan*/  MP_ZPOS ; 
 int FUNC0 (TYPE_1__ const*,TYPE_1__*) ; 
 int FUNC1 (TYPE_1__ const*,TYPE_1__*) ; 
 int FUNC2 (TYPE_1__ const*,TYPE_1__*) ; 

int
FUNC3 (const mp_int * a, mp_int * b)
{
  int     res;

if (a->used >= KARATSUBA_SQR_CUTOFF) {
    res = FUNC1 (a, b);
  } else 
  {
    /* can we use the fast comba multiplier? */
    if ((a->used * 2 + 1) < MP_WARRAY && 
         a->used < 
         (1 << (sizeof(mp_word) * CHAR_BIT - 2*DIGIT_BIT - 1))) {
      res = FUNC0 (a, b);
    } else
      res = FUNC2 (a, b);
  }
  b->sign = MP_ZPOS;
  return res;
}