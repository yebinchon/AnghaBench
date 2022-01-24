#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int mp_word ;
struct TYPE_13__ {int used; scalar_t__* dp; } ;
typedef  TYPE_1__ mp_int ;
typedef  scalar_t__ mp_digit ;

/* Variables and functions */
 int CHAR_BIT ; 
 int DIGIT_BIT ; 
 int FUNC0 (int,int) ; 
 scalar_t__ MP_MASK ; 
 int MP_OKAY ; 
 int MP_WARRAY ; 
 int FUNC1 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC6 (const mp_int * a, const mp_int * b, mp_int * c, int digs)
{
  mp_int  t;
  int     res, pa, pb, ix, iy;
  mp_digit u;
  mp_word r;
  mp_digit tmpx, *tmpt, *tmpy;

  /* can we use the fast multiplier? */
  if (((digs) < MP_WARRAY) &&
      FUNC0 (a->used, b->used) < 
          (1 << ((CHAR_BIT * sizeof (mp_word)) - (2 * DIGIT_BIT)))) {
    return FUNC1 (a, b, c, digs);
  }

  if ((res = FUNC5 (&t, digs)) != MP_OKAY) {
    return res;
  }
  t.used = digs;

  /* compute the digits of the product directly */
  pa = a->used;
  for (ix = 0; ix < pa; ix++) {
    /* set the carry to zero */
    u = 0;

    /* limit ourselves to making digs digits of output */
    pb = FUNC0 (b->used, digs - ix);

    /* setup some aliases */
    /* copy of the digit from a used within the nested loop */
    tmpx = a->dp[ix];
    
    /* an alias for the destination shifted ix places */
    tmpt = t.dp + ix;
    
    /* an alias for the digits of b */
    tmpy = b->dp;

    /* compute the columns of the output and propagate the carry */
    for (iy = 0; iy < pb; iy++) {
      /* compute the column as a mp_word */
      r       = ((mp_word)*tmpt) +
                ((mp_word)tmpx) * ((mp_word)*tmpy++) +
                ((mp_word) u);

      /* the new column is the lower part of the result */
      *tmpt++ = (mp_digit) (r & ((mp_word) MP_MASK));

      /* get the carry word from the result */
      u       = (mp_digit) (r >> ((mp_word) DIGIT_BIT));
    }
    /* set carry if it is placed below digs */
    if (ix + iy < digs) {
      *tmpt = u;
    }
  }

  FUNC2 (&t);
  FUNC4 (&t, c);

  FUNC3 (&t);
  return MP_OKAY;
}