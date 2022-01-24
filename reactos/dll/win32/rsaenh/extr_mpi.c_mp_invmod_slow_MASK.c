#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_1__ ;

/* Type definitions */
struct TYPE_42__ {scalar_t__ sign; } ;
typedef  TYPE_1__ const mp_int ;

/* Variables and functions */
 scalar_t__ MP_EQ ; 
 scalar_t__ MP_LT ; 
 scalar_t__ MP_NEG ; 
 int MP_OKAY ; 
 int MP_VAL ; 
 int FUNC0 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*,TYPE_1__ const*) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int FUNC5 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int FUNC6 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int FUNC8 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__ const*) ; 
 int FUNC10 (TYPE_1__ const*) ; 
 scalar_t__ FUNC11 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__ const*,int) ; 
 int FUNC13 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 

int FUNC14 (const mp_int * a, mp_int * b, mp_int * c)
{
  mp_int  x, y, u, v, A, B, C, D;
  int     res;

  /* b cannot be negative */
  if (b->sign == MP_NEG || FUNC11(b) == 1) {
    return MP_VAL;
  }

  /* init temps */
  if ((res = FUNC8(&x, &y, &u, &v, 
                           &A, &B, &C, &D, NULL)) != MP_OKAY) {
     return res;
  }

  /* x = a, y = b */
  if ((res = FUNC5 (a, &x)) != MP_OKAY) {
    goto __ERR;
  }
  if ((res = FUNC5 (b, &y)) != MP_OKAY) {
    goto __ERR;
  }

  /* 2. [modified] if x,y are both even then return an error! */
  if (FUNC9 (&x) == 1 && FUNC9 (&y) == 1) {
    res = MP_VAL;
    goto __ERR;
  }

  /* 3. u=x, v=y, A=1, B=0, C=0,D=1 */
  if ((res = FUNC5 (&x, &u)) != MP_OKAY) {
    goto __ERR;
  }
  if ((res = FUNC5 (&y, &v)) != MP_OKAY) {
    goto __ERR;
  }
  FUNC12 (&A, 1);
  FUNC12 (&D, 1);

top:
  /* 4.  while u is even do */
  while (FUNC9 (&u) == 1) {
    /* 4.1 u = u/2 */
    if ((res = FUNC6 (&u, &u)) != MP_OKAY) {
      goto __ERR;
    }
    /* 4.2 if A or B is odd then */
    if (FUNC10 (&A) == 1 || FUNC10 (&B) == 1) {
      /* A = (A+y)/2, B = (B-x)/2 */
      if ((res = FUNC0 (&A, &y, &A)) != MP_OKAY) {
         goto __ERR;
      }
      if ((res = FUNC13 (&B, &x, &B)) != MP_OKAY) {
         goto __ERR;
      }
    }
    /* A = A/2, B = B/2 */
    if ((res = FUNC6 (&A, &A)) != MP_OKAY) {
      goto __ERR;
    }
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
    /* 5.2 if C or D is odd then */
    if (FUNC10 (&C) == 1 || FUNC10 (&D) == 1) {
      /* C = (C+y)/2, D = (D-x)/2 */
      if ((res = FUNC0 (&C, &y, &C)) != MP_OKAY) {
         goto __ERR;
      }
      if ((res = FUNC13 (&D, &x, &D)) != MP_OKAY) {
         goto __ERR;
      }
    }
    /* C = C/2, D = D/2 */
    if ((res = FUNC6 (&C, &C)) != MP_OKAY) {
      goto __ERR;
    }
    if ((res = FUNC6 (&D, &D)) != MP_OKAY) {
      goto __ERR;
    }
  }

  /* 6.  if u >= v then */
  if (FUNC2 (&u, &v) != MP_LT) {
    /* u = u - v, A = A - C, B = B - D */
    if ((res = FUNC13 (&u, &v, &u)) != MP_OKAY) {
      goto __ERR;
    }

    if ((res = FUNC13 (&A, &C, &A)) != MP_OKAY) {
      goto __ERR;
    }

    if ((res = FUNC13 (&B, &D, &B)) != MP_OKAY) {
      goto __ERR;
    }
  } else {
    /* v - v - u, C = C - A, D = D - B */
    if ((res = FUNC13 (&v, &u, &v)) != MP_OKAY) {
      goto __ERR;
    }

    if ((res = FUNC13 (&C, &A, &C)) != MP_OKAY) {
      goto __ERR;
    }

    if ((res = FUNC13 (&D, &B, &D)) != MP_OKAY) {
      goto __ERR;
    }
  }

  /* if not zero goto step 4 */
  if (FUNC11 (&u) == 0)
    goto top;

  /* now a = C, b = D, gcd == g*v */

  /* if v != 1 then there is no inverse */
  if (FUNC3 (&v, 1) != MP_EQ) {
    res = MP_VAL;
    goto __ERR;
  }

  /* if it's too low */
  while (FUNC3(&C, 0) == MP_LT) {
      if ((res = FUNC0(&C, b, &C)) != MP_OKAY) {
         goto __ERR;
      }
  }
  
  /* too big */
  while (FUNC4(&C, b) != MP_LT) {
      if ((res = FUNC13(&C, b, &C)) != MP_OKAY) {
         goto __ERR;
      }
  }
  
  /* C is now the inverse */
  FUNC7 (&C, c);
  res = MP_OKAY;
__ERR:FUNC1 (&x, &y, &u, &v, &A, &B, &C, &D, NULL);
  return res;
}