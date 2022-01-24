#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  node; scalar_t__ off; } ;
typedef  TYPE_1__ rangepoint_t ;
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ NS_OK ; 
 scalar_t__ TEXT_NODE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC10(rangepoint_t *iter)
{
    nsIDOMNode *node;
    UINT32 off;
    nsresult nsres;

    /* Try to move to the child node. */
    if(iter->off) {
        node = FUNC4(iter->node, iter->off-1);
        FUNC0(node != NULL);

        off = FUNC5(node) == TEXT_NODE ? FUNC6(node) : FUNC2(node);
        FUNC1(iter);
        FUNC7(iter, node, off);
        FUNC9(node);
        return TRUE;
    }

    /* There are no more children in the node. Move to parent. */
    nsres = FUNC8(iter->node, &node);
    FUNC0(nsres == NS_OK);
    if(!node)
        return FALSE;

    off = FUNC3(node, iter->node);
    FUNC1(iter);
    FUNC7(iter, node, off);
    return TRUE;
}