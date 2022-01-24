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
typedef  int mp_word ;
struct TYPE_14__ {int used; int alloc; int* dp; } ;
typedef  TYPE_1__ mp_int ;
typedef  int mp_digit ;

/* Variables and functions */
 int CHAR_BIT ; 
 int DIGIT_BIT ; 
 scalar_t__ MP_LT ; 
 int MP_MASK ; 
 int MP_OKAY ; 
 int MP_WARRAY ; 
 int FUNC0 (TYPE_1__*,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__ const*) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*,TYPE_1__ const*,TYPE_1__*) ; 

int
FUNC6 (mp_int * x, const mp_int * n, mp_digit rho)
{
  int     ix, res, digs;
  mp_digit mu;

  /* can the fast reduction [comba] method be used?
   *
   * Note that unlike in mul you're safely allowed *less*
   * than the available columns [255 per default] since carries
   * are fixed up in the inner loop.
   */
  digs = n->used * 2 + 1;
  if ((digs < MP_WARRAY) &&
      n->used <
      (1 << ((CHAR_BIT * sizeof (mp_word)) - (2 * DIGIT_BIT)))) {
    return FUNC0 (x, n, rho);
  }

  /* grow the input as required */
  if (x->alloc < digs) {
    if ((res = FUNC3 (x, digs)) != MP_OKAY) {
      return res;
    }
  }
  x->used = digs;

  for (ix = 0; ix < n->used; ix++) {
    /* mu = ai * rho mod b
     *
     * The value of rho must be precalculated via
     * montgomery_setup() such that
     * it equals -1/n0 mod b this allows the
     * following inner loop to reduce the
     * input one digit at a time
     */
    mu = (mp_digit) (((mp_word)x->dp[ix]) * ((mp_word)rho) & MP_MASK);

    /* a = a + mu * m * b**i */
    {
      register int iy;
      register mp_digit *tmpn, *tmpx, u;
      register mp_word r;

      /* alias for digits of the modulus */
      tmpn = n->dp;

      /* alias for the digits of x [the input] */
      tmpx = x->dp + ix;

      /* set the carry to zero */
      u = 0;

      /* Multiply and add in place */
      for (iy = 0; iy < n->used; iy++) {
        /* compute product and sum */
        r       = ((mp_word)mu) * ((mp_word)*tmpn++) +
                  ((mp_word) u) + ((mp_word) * tmpx);

        /* get carry */
        u       = (mp_digit)(r >> ((mp_word) DIGIT_BIT));

        /* fix digit */
        *tmpx++ = (mp_digit)(r & ((mp_word) MP_MASK));
      }
      /* At this point the ix'th digit of x should be zero */


      /* propagate carries upwards as required*/
      while (u) {
        *tmpx   += u;
        u        = *tmpx >> DIGIT_BIT;
        *tmpx++ &= MP_MASK;
      }
    }
  }

  /* at this point the n.used'th least
   * significant digits of x are all zero
   * which means we can shift x to the
   * right by n.used digits and the
   * residue is unchanged.
   */

  /* x = x/b**n.used */
  FUNC1(x);
  FUNC4 (x, n->used);

  /* if x >= n then x = x - n */
  if (FUNC2 (x, n) != MP_LT) {
    return FUNC5 (x, n, x);
  }

  return MP_OKAY;
}