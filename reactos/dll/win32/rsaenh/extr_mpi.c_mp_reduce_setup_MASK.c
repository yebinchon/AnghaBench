#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int used; } ;
typedef  TYPE_1__ mp_int ;

/* Variables and functions */
 int DIGIT_BIT ; 
 int MP_OKAY ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__ const*,TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC2 (mp_int * a, const mp_int * b)
{
  int     res;

  if ((res = FUNC0 (a, b->used * 2 * DIGIT_BIT)) != MP_OKAY) {
    return res;
  }
  return FUNC1 (a, b, a, NULL);
}