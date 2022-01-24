#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mp_word ;
struct TYPE_14__ {scalar_t__ sign; int used; } ;
typedef  TYPE_1__ mp_int ;

/* Variables and functions */
 int CHAR_BIT ; 
 int DIGIT_BIT ; 
 int KARATSUBA_MUL_CUTOFF ; 
 int FUNC0 (int,int) ; 
 int MP_NEG ; 
 int MP_WARRAY ; 
 int MP_ZPOS ; 
 int FUNC1 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*) ; 
 int FUNC3 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*) ; 

int FUNC4 (const mp_int * a, const mp_int * b, mp_int * c)
{
  int     res, neg;
  neg = (a->sign == b->sign) ? MP_ZPOS : MP_NEG;

  /* use Karatsuba? */
  if (FUNC0 (a->used, b->used) >= KARATSUBA_MUL_CUTOFF) {
    res = FUNC2 (a, b, c);
  } else 
  {
    /* can we use the fast multiplier?
     *
     * The fast multiplier can be used if the output will 
     * have less than MP_WARRAY digits and the number of 
     * digits won't affect carry propagation
     */
    int     digs = a->used + b->used + 1;

    if ((digs < MP_WARRAY) &&
        FUNC0(a->used, b->used) <= 
        (1 << ((CHAR_BIT * sizeof (mp_word)) - (2 * DIGIT_BIT)))) {
      res = FUNC1 (a, b, c, digs);
    } else 
      res = FUNC3 (a, b, c); /* uses s_mp_mul_digs */
  }
  c->sign = (c->used > 0) ? neg : MP_ZPOS;
  return res;
}