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
typedef  int /*<<< orphan*/  rangepoint_t ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
struct TYPE_3__ {int /*<<< orphan*/  nsrange; } ;
typedef  int /*<<< orphan*/  LONG ;
typedef  TYPE_1__ HTMLTxtRange ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(HTMLTxtRange *This, rangepoint_t *ret)
{
    nsIDOMNode *node;
    LONG off;

    FUNC2(This->nsrange, &node);
    FUNC3(This->nsrange, &off);

    FUNC0(ret, node, off);

    FUNC1(node);
}