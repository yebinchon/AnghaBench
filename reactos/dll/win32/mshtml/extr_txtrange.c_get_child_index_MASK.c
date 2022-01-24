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
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsIDOMNodeList ;
typedef  int /*<<< orphan*/  nsIDOMNode ;

/* Variables and functions */
 scalar_t__ NS_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(nsIDOMNode *parent, nsIDOMNode *child)
{
    nsIDOMNodeList *node_list;
    nsIDOMNode *node;
    int ret = 0;
    nsresult nsres;

    nsres = FUNC3(parent, &node_list);
    FUNC0(nsres == NS_OK);

    while(1) {
        nsres = FUNC1(node_list, ret, &node);
        FUNC0(nsres == NS_OK && node);
        if(node == child) {
            FUNC4(node);
            break;
        }
        FUNC4(node);
        ret++;
    }

    FUNC2(node_list);
    return ret;
}