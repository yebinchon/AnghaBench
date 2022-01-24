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
struct rbnode {int dummy; } ;
struct msg {int dummy; } ;

/* Variables and functions */
 struct msg* FUNC0 (struct rbnode*) ; 
 struct rbnode* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tmo_rbt ; 

struct msg *
FUNC2(void)
{
    struct rbnode *node;

    node = FUNC1(&tmo_rbt);
    if (node == NULL) {
        return NULL;
    }

    return FUNC0(node);
}