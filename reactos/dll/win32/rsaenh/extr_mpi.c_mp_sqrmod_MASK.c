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
typedef  int /*<<< orphan*/  mp_int ;

/* Variables and functions */
 int MP_OKAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int
FUNC4 (const mp_int * a, mp_int * b, mp_int * c)
{
  int     res;
  mp_int  t;

  if ((res = FUNC1 (&t)) != MP_OKAY) {
    return res;
  }

  if ((res = FUNC3 (a, &t)) != MP_OKAY) {
    FUNC0 (&t);
    return res;
  }
  res = FUNC2 (&t, b, c);
  FUNC0 (&t);
  return res;
}