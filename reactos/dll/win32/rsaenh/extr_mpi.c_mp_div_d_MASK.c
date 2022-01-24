#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int mp_word ;
struct TYPE_14__ {int* dp; int used; int /*<<< orphan*/  sign; } ;
typedef  TYPE_1__ mp_int ;
typedef  int mp_digit ;

/* Variables and functions */
 scalar_t__ DIGIT_BIT ; 
 int MP_OKAY ; 
 int MP_VAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__ const*,TYPE_1__*) ; 
 int FUNC3 (TYPE_1__ const*,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__ const*) ; 
 scalar_t__ FUNC7 (int,int*) ; 

__attribute__((used)) static int FUNC8 (const mp_int * a, mp_digit b, mp_int * c, mp_digit * d)
{
  mp_int  q;
  mp_word w;
  mp_digit t;
  int     res, ix;

  /* cannot divide by zero */
  if (b == 0) {
     return MP_VAL;
  }

  /* quick outs */
  if (b == 1 || FUNC6(a) == 1) {
     if (d != NULL) {
        *d = 0;
     }
     if (c != NULL) {
        return FUNC2(a, c);
     }
     return MP_OKAY;
  }

  /* power of two ? */
  if (FUNC7(b, &ix)) {
     if (d != NULL) {
        *d = a->dp[0] & ((((mp_digit)1)<<ix) - 1);
     }
     if (c != NULL) {
        return FUNC3(a, ix, c, NULL);
     }
     return MP_OKAY;
  }

  /* no easy answer [c'est la vie].  Just division */
  if ((res = FUNC5(&q, a->used)) != MP_OKAY) {
     return res;
  }
  
  q.used = a->used;
  q.sign = a->sign;
  w = 0;
  for (ix = a->used - 1; ix >= 0; ix--) {
     w = (w << ((mp_word)DIGIT_BIT)) | ((mp_word)a->dp[ix]);
     
     if (w >= b) {
        t = (mp_digit)(w / b);
        w -= ((mp_word)t) * ((mp_word)b);
      } else {
        t = 0;
      }
      q.dp[ix] = t;
  }

  if (d != NULL) {
     *d = (mp_digit)w;
  }
  
  if (c != NULL) {
     FUNC0(&q);
     FUNC4(&q, c);
  }
  FUNC1(&q);
  
  return res;
}