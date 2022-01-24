#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int used; int /*<<< orphan*/ * dp; } ;
typedef  TYPE_1__ mp_int ;
typedef  int /*<<< orphan*/  mp_digit ;

/* Variables and functions */
 int MP_MEM ; 
 int MP_OKAY ; 
 int FUNC0 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 

int FUNC8 (const mp_int * a, mp_int * b)
{
  mp_int  x0, x1, t1, t2, x0x0, x1x1;
  int     B, err;

  err = MP_MEM;

  /* min # of digits */
  B = a->used;

  /* now divide in two */
  B = B >> 1;

  /* init copy all the temps */
  if (FUNC3 (&x0, B) != MP_OKAY)
    goto ERR;
  if (FUNC3 (&x1, a->used - B) != MP_OKAY)
    goto X0;

  /* init temps */
  if (FUNC3 (&t1, a->used * 2) != MP_OKAY)
    goto X1;
  if (FUNC3 (&t2, a->used * 2) != MP_OKAY)
    goto T1;
  if (FUNC3 (&x0x0, B * 2) != MP_OKAY)
    goto T2;
  if (FUNC3 (&x1x1, (a->used - B) * 2) != MP_OKAY)
    goto X0X0;

  {
    register int x;
    register mp_digit *dst, *src;

    src = a->dp;

    /* now shift the digits */
    dst = x0.dp;
    for (x = 0; x < B; x++) {
      *dst++ = *src++;
    }

    dst = x1.dp;
    for (x = B; x < a->used; x++) {
      *dst++ = *src++;
    }
  }

  x0.used = B;
  x1.used = a->used - B;

  FUNC1 (&x0);

  /* now calc the products x0*x0 and x1*x1 */
  if (FUNC5 (&x0, &x0x0) != MP_OKAY)
    goto X1X1;           /* x0x0 = x0*x0 */
  if (FUNC5 (&x1, &x1x1) != MP_OKAY)
    goto X1X1;           /* x1x1 = x1*x1 */

  /* now calc (x1-x0)**2 */
  if (FUNC6 (&x1, &x0, &t1) != MP_OKAY)
    goto X1X1;           /* t1 = x1 - x0 */
  if (FUNC5 (&t1, &t1) != MP_OKAY)
    goto X1X1;           /* t1 = (x1 - x0) * (x1 - x0) */

  /* add x0y0 */
  if (FUNC7 (&x0x0, &x1x1, &t2) != MP_OKAY)
    goto X1X1;           /* t2 = x0x0 + x1x1 */
  if (FUNC6 (&t2, &t1, &t1) != MP_OKAY)
    goto X1X1;           /* t1 = x0x0 + x1x1 - (x1-x0)*(x1-x0) */

  /* shift by B */
  if (FUNC4 (&t1, B) != MP_OKAY)
    goto X1X1;           /* t1 = (x0x0 + x1x1 - (x1-x0)*(x1-x0))<<B */
  if (FUNC4 (&x1x1, B * 2) != MP_OKAY)
    goto X1X1;           /* x1x1 = x1x1 << 2*B */

  if (FUNC0 (&x0x0, &t1, &t1) != MP_OKAY)
    goto X1X1;           /* t1 = x0x0 + t1 */
  if (FUNC0 (&t1, &x1x1, b) != MP_OKAY)
    goto X1X1;           /* t1 = x0x0 + t1 + x1x1 */

  err = MP_OKAY;

X1X1:FUNC2 (&x1x1);
X0X0:FUNC2 (&x0x0);
T2:FUNC2 (&t2);
T1:FUNC2 (&t1);
X1:FUNC2 (&x1);
X0:FUNC2 (&x0);
ERR:
  return err;
}