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
struct call_entry {int /*<<< orphan*/  column; int /*<<< orphan*/  line; } ;
typedef  int /*<<< orphan*/  ISAXLocator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct call_entry*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(ISAXLocator *locator, struct call_entry *call)
{
    FUNC2(call, 0, sizeof(*call));
    FUNC1(locator, &call->line);
    FUNC0(locator, &call->column);
}