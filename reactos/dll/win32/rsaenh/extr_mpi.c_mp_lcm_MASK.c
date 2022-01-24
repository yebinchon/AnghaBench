#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  sign; } ;
typedef  TYPE_1__ mp_int ;

/* Variables and functions */
 scalar_t__ MP_LT ; 
 int MP_OKAY ; 
 int /*<<< orphan*/  MP_ZPOS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int FUNC2 (TYPE_1__ const*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__ const*,TYPE_1__*,TYPE_1__*) ; 

int FUNC6 (const mp_int * a, const mp_int * b, mp_int * c)
{
  int     res;
  mp_int  t1, t2;


  if ((res = FUNC4 (&t1, &t2, NULL)) != MP_OKAY) {
    return res;
  }

  /* t1 = get the GCD of the two inputs */
  if ((res = FUNC3 (a, b, &t1)) != MP_OKAY) {
    goto __T;
  }

  /* divide the smallest by the GCD */
  if (FUNC1(a, b) == MP_LT) {
     /* store quotient in t2 so that t2 * b is the LCM */
     if ((res = FUNC2(a, &t1, &t2, NULL)) != MP_OKAY) {
        goto __T;
     }
     res = FUNC5(b, &t2, c);
  } else {
     /* store quotient in t2 so that t2 * a is the LCM */
     if ((res = FUNC2(b, &t1, &t2, NULL)) != MP_OKAY) {
        goto __T;
     }
     res = FUNC5(a, &t2, c);
  }

  /* fix the sign to positive */
  c->sign = MP_ZPOS;

__T:
  FUNC0 (&t1, &t2, NULL);
  return res;
}