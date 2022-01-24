#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ CapState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2 (CapState *cs) {
  int n = FUNC1(cs, 0);
  if (n > 1)
    FUNC0(cs->L, n - 1);  /* pop extra values */
}