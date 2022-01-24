#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  off; int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ rangepoint_t ;
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static LONG FUNC4(rangepoint_t *iter, BOOL first_space)
{
    rangepoint_t prev;
    WCHAR c;

    FUNC1(&prev, iter->node, iter->off);
    c = FUNC3(&prev);
    if(!c || (first_space && FUNC2(c)))
        return FALSE;

    do {
        FUNC0(iter);
        FUNC1(iter, prev.node, prev.off);
        c = FUNC3(&prev);
    }while(c && !FUNC2(c));

    FUNC0(&prev);
    return TRUE;
}