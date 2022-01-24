#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  off; int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ rangepoint_t ;
typedef  char WCHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char) ; 
 char FUNC3 (TYPE_1__*) ; 
 char FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static BOOL FUNC6(rangepoint_t *iter, BOOL is_collapsed)
{
    rangepoint_t prev_iter;
    WCHAR c;
    BOOL ret = FALSE;

    if(!is_collapsed) {
        FUNC1(&prev_iter, iter->node, iter->off);
        c = FUNC4(&prev_iter);
        FUNC0(&prev_iter);
        if(FUNC2(c))
            return FALSE;
    }

    do {
        FUNC1(&prev_iter, iter->node, iter->off);
        c = FUNC3(iter);
        if(c == '\n') {
            FUNC0(iter);
            *iter = prev_iter;
            return ret;
        }
        if(!c) {
            if(!ret)
                ret = !FUNC5(iter, &prev_iter);
        }else {
            ret = TRUE;
        }
        FUNC0(&prev_iter);
    }while(c && !FUNC2(c));

    return ret;
}