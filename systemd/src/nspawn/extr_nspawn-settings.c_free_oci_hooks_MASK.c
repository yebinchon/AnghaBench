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
struct TYPE_4__ {int /*<<< orphan*/  env; int /*<<< orphan*/  args; struct TYPE_4__* path; } ;
typedef  TYPE_1__ OciHook ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(OciHook *h, size_t n) {
        size_t i;

        FUNC0(h || n == 0);

        for (i = 0; i < n; i++) {
                FUNC1(h[i].path);
                FUNC2(h[i].args);
                FUNC2(h[i].env);
        }

        FUNC1(h);
}