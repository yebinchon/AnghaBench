#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_1__ ;

/* Type definitions */
struct TYPE_38__ {int sign; } ;
typedef  TYPE_1__ mp_int ;

/* Variables and functions */
 scalar_t__ MP_EQ ; 
 scalar_t__ MP_LT ; 
 scalar_t__ MP_NEG ; 
 int MP_OKAY ; 
 int MP_VAL ; 
 int FUNC0 (TYPE_1__ const*,TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int FUNC13 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC14 (const mp_int * a, mp_int * b, mp_int * c)
{
  mp_int  x, y, u, v, B, D;
  int     res, neg;

  /* 2. [modified] b must be odd   */
  if (FUNC9 (b) == 1) {
    return MP_VAL;
  }

  /* init all our temps */
  if ((res = FUNC8(&x, &y, &u, &v, &B, &D, NULL)) != MP_OKAY) {
     return res;
  }

  /* x == modulus, y == value to invert */
  if ((res = FUNC5 (b, &x)) != MP_OKAY) {
    goto __ERR;
  }

  /* we need y = |a| */
  if ((res = FUNC0 (a, &y)) != MP_OKAY) {
    goto __ERR;
  }

  /* 3. u=x, v=y, A=1, B=0, C=0,D=1 */
  if ((res = FUNC5 (&x, &u)) != MP_OKAY) {
    goto __ERR;
  }
  if ((res = FUNC5 (&y, &v)) != MP_OKAY) {
    goto __ERR;
  }
  FUNC12 (&D, 1);

top:
  /* 4.  while u is even do */
  while (FUNC9 (&u) == 1) {
    /* 4.1 u = u/2 */
    if ((res = FUNC6 (&u, &u)) != MP_OKAY) {
      goto __ERR;
    }
    /* 4.2 if B is odd then */
    if (FUNC10 (&B) == 1) {
      if ((res = FUNC13 (&B, &x, &B)) != MP_OKAY) {
        goto __ERR;
      }
    }
    /* B = B/2 */
    if ((res = FUNC6 (&B, &B)) != MP_OKAY) {
      goto __ERR;
    }
  }

  /* 5.  while v is even do */
  while (FUNC9 (&v) == 1) {
    /* 5.1 v = v/2 */
    if ((res = FUNC6 (&v, &v)) != MP_OKAY) {
      goto __ERR;
    }
    /* 5.2 if D is odd then */
    if (FUNC10 (&D) == 1) {
      /* D = (D-x)/2 */
      if ((res = FUNC13 (&D, &x, &D)) != MP_OKAY) {
        goto __ERR;
      }
    }
    /* D = D/2 */
    if ((res = FUNC6 (&D, &D)) != MP_OKAY) {
      goto __ERR;
    }
  }

  /* 6.  if u >= v then */
  if (FUNC3 (&u, &v) != MP_LT) {
    /* u = u - v, B = B - D */
    if ((res = FUNC13 (&u, &v, &u)) != MP_OKAY) {
      goto __ERR;
    }

    if ((res = FUNC13 (&B, &D, &B)) != MP_OKAY) {
      goto __ERR;
    }
  } else {
    /* v - v - u, D = D - B */
    if ((res = FUNC13 (&v, &u, &v)) != MP_OKAY) {
      goto __ERR;
    }

    if ((res = FUNC13 (&D, &B, &D)) != MP_OKAY) {
      goto __ERR;
    }
  }

  /* if not zero goto step 4 */
  if (FUNC11 (&u) == 0) {
    goto top;
  }

  /* now a = C, b = D, gcd == g*v */

  /* if v != 1 then there is no inverse */
  if (FUNC4 (&v, 1) != MP_EQ) {
    res = MP_VAL;
    goto __ERR;
  }

  /* b is now the inverse */
  neg = a->sign;
  while (D.sign == MP_NEG) {
    if ((res = FUNC1 (&D, b, &D)) != MP_OKAY) {
      goto __ERR;
    }
  }
  FUNC7 (&D, c);
  c->sign = neg;
  res = MP_OKAY;

__ERR:FUNC2 (&x, &y, &u, &v, &B, &D, NULL);
  return res;
}