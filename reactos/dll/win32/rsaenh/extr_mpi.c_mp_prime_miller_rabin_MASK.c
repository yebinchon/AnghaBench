#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  const mp_int ;

/* Variables and functions */
 scalar_t__ MP_EQ ; 
 scalar_t__ MP_GT ; 
 int MP_NO ; 
 int MP_OKAY ; 
 int MP_VAL ; 
 int MP_YES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC9 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC10 (mp_int * a, const mp_int * b, int *result)
{
  mp_int  n1, y, r;
  int     s, j, err;

  /* default */
  *result = MP_NO;

  /* ensure b > 1 */
  if (FUNC2(b, 1) != MP_GT) {
     return MP_VAL;
  }     

  /* get n1 = a - 1 */
  if ((err = FUNC7 (&n1, a)) != MP_OKAY) {
    return err;
  }
  if ((err = FUNC9 (&n1, 1, &n1)) != MP_OKAY) {
    goto __N1;
  }

  /* set 2**s * r = n1 */
  if ((err = FUNC7 (&r, &n1)) != MP_OKAY) {
    goto __N1;
  }

  /* count the number of least significant bits
   * which are zero
   */
  s = FUNC3(&r);

  /* now divide n - 1 by 2**s */
  if ((err = FUNC4 (&r, s, &r, NULL)) != MP_OKAY) {
    goto __R;
  }

  /* compute y = b**r mod a */
  if ((err = FUNC6 (&y)) != MP_OKAY) {
    goto __R;
  }
  if ((err = FUNC5 (b, &r, a, &y)) != MP_OKAY) {
    goto __Y;
  }

  /* if y != 1 and y != n1 do */
  if (FUNC2 (&y, 1) != MP_EQ && FUNC1 (&y, &n1) != MP_EQ) {
    j = 1;
    /* while j <= s-1 and y != n1 */
    while ((j <= (s - 1)) && FUNC1 (&y, &n1) != MP_EQ) {
      if ((err = FUNC8 (&y, a, &y)) != MP_OKAY) {
         goto __Y;
      }

      /* if y == 1 then composite */
      if (FUNC2 (&y, 1) == MP_EQ) {
         goto __Y;
      }

      ++j;
    }

    /* if y != n1 then composite */
    if (FUNC1 (&y, &n1) != MP_EQ) {
      goto __Y;
    }
  }

  /* probably prime now */
  *result = MP_YES;
__Y:FUNC0 (&y);
__R:FUNC0 (&r);
__N1:FUNC0 (&n1);
  return err;
}