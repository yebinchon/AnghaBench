#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_1__ ;

/* Type definitions */
struct TYPE_34__ {int used; } ;
typedef  TYPE_1__ mp_int ;
typedef  int mp_digit ;

/* Variables and functions */
 int DIGIT_BIT ; 
 scalar_t__ MP_LT ; 
 int MP_OKAY ; 
 int FUNC0 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__ const*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*,int,TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,TYPE_1__ const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int FUNC10 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*,TYPE_1__ const*,TYPE_1__*,int) ; 
 int FUNC12 (TYPE_1__*,TYPE_1__ const*,TYPE_1__*,int) ; 
 int FUNC13 (TYPE_1__*,TYPE_1__ const*,TYPE_1__*) ; 

int
FUNC14 (mp_int * x, const mp_int * m, const mp_int * mu)
{
  mp_int  q;
  int     res, um = m->used;

  /* q = x */
  if ((res = FUNC4 (&q, x)) != MP_OKAY) {
    return res;
  }

  /* q1 = x / b**(k-1)  */
  FUNC8 (&q, um - 1);         

  /* according to HAC this optimization is ok */
  if (((unsigned long) um) > (((mp_digit)1) << (DIGIT_BIT - 1))) {
    if ((res = FUNC7 (&q, mu, &q)) != MP_OKAY) {
      goto CLEANUP;
    }
  } else {
    if ((res = FUNC12 (&q, mu, &q, um - 1)) != MP_OKAY) {
      goto CLEANUP;
    }
  }

  /* q3 = q2 / b**(k+1) */
  FUNC8 (&q, um + 1);         

  /* x = x mod b**(k+1), quick (no division) */
  if ((res = FUNC6 (x, DIGIT_BIT * (um + 1), x)) != MP_OKAY) {
    goto CLEANUP;
  }

  /* q = q * m mod b**(k+1), quick (no division) */
  if ((res = FUNC11 (&q, m, &q, um + 1)) != MP_OKAY) {
    goto CLEANUP;
  }

  /* x = x - q */
  if ((res = FUNC10 (x, &q, x)) != MP_OKAY) {
    goto CLEANUP;
  }

  /* If x < 0, add b**(k+1) to it */
  if (FUNC3 (x, 0) == MP_LT) {
    FUNC9 (&q, 1);
    if ((res = FUNC5 (&q, um + 1)) != MP_OKAY)
      goto CLEANUP;
    if ((res = FUNC0 (x, &q, x)) != MP_OKAY)
      goto CLEANUP;
  }

  /* Back off if it's too big */
  while (FUNC2 (x, m) != MP_LT) {
    if ((res = FUNC13 (x, m, x)) != MP_OKAY) {
      goto CLEANUP;
    }
  }
  
CLEANUP:
  FUNC1 (&q);

  return res;
}