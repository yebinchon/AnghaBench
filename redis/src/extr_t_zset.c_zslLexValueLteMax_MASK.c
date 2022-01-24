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
struct TYPE_3__ {int /*<<< orphan*/  max; scalar_t__ maxex; } ;
typedef  TYPE_1__ zlexrangespec ;
typedef  int /*<<< orphan*/  sds ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(sds value, zlexrangespec *spec) {
    return spec->maxex ?
        (FUNC0(value,spec->max) < 0) :
        (FUNC0(value,spec->max) <= 0);
}