#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * dp; } ;
typedef  TYPE_1__ mp_int ;
typedef  int /*<<< orphan*/  mp_digit ;

/* Variables and functions */
 int MP_OKAY ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__ const*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__ const*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(const mp_int *a, mp_digit *d)
{
   int res, p;
   mp_int tmp;
   
   if ((res = FUNC3(&tmp)) != MP_OKAY) {
      return res;
   }
   
   p = FUNC2(a);
   if ((res = FUNC0(&tmp, p)) != MP_OKAY) {
      FUNC1(&tmp);
      return res;
   }
   
   if ((res = FUNC4(&tmp, a, &tmp)) != MP_OKAY) {
      FUNC1(&tmp);
      return res;
   }
   
   *d = tmp.dp[0];
   FUNC1(&tmp);
   return MP_OKAY;
}