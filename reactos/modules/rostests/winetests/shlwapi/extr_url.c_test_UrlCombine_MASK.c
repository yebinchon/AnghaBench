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
struct TYPE_3__ {int /*<<< orphan*/  todo; int /*<<< orphan*/  expecturl; int /*<<< orphan*/  expectret; int /*<<< orphan*/  flags; int /*<<< orphan*/  url2; int /*<<< orphan*/  url1; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* TEST_COMBINE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
    unsigned int i;
    for (i = 0; i < FUNC0(TEST_COMBINE); i++) {
        FUNC1(TEST_COMBINE[i].url1, TEST_COMBINE[i].url2, TEST_COMBINE[i].flags,
                         TEST_COMBINE[i].expectret, TEST_COMBINE[i].expecturl, TEST_COMBINE[i].todo);
    }
}