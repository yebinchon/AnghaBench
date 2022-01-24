#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int alloc; int used; int /*<<< orphan*/ * dp; } ;
typedef  TYPE_1__ mp_int ;
typedef  int /*<<< orphan*/  mp_digit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int MP_MEM ; 
 int MP_OKAY ; 

int FUNC2 (mp_int * a)
{
  mp_digit *tmp;
  if (a->alloc != a->used && a->used > 0) {
    if ((tmp = FUNC1(FUNC0(), 0, a->dp, sizeof (mp_digit) * a->used)) == NULL) {
      return MP_MEM;
    }
    a->dp    = tmp;
    a->alloc = a->used;
  }
  return MP_OKAY;
}