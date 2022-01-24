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
typedef  int mp_digit ;

/* Variables and functions */
 scalar_t__ MP_LT ; 
 int MP_OKAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int
FUNC8(mp_int *a, const mp_int *n, mp_digit d)
{
   mp_int q;
   int    p, res;
   
   if ((res = FUNC4(&q)) != MP_OKAY) {
      return res;
   }
   
   p = FUNC2(n);    
top:
   /* q = a/2**p, a = a mod 2**p */
   if ((res = FUNC3(a, p, &q, a)) != MP_OKAY) {
      goto ERR;
   }
   
   if (d != 1) {
      /* q = q * d */
      if ((res = FUNC5(&q, d, &q)) != MP_OKAY) { 
         goto ERR;
      }
   }
   
   /* a = a + q */
   if ((res = FUNC6(a, &q, a)) != MP_OKAY) {
      goto ERR;
   }
   
   if (FUNC1(a, n) != MP_LT) {
      FUNC7(a, n, a);
      goto top;
   }
   
ERR:
   FUNC0(&q);
   return res;
}