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
struct node {struct node* parent; struct node* path; scalar_t__ child; scalar_t__ object_managers; scalar_t__ enumerators; scalar_t__ vtables; scalar_t__ callbacks; } ;
struct TYPE_4__ {int /*<<< orphan*/  nodes; } ;
typedef  TYPE_1__ sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,struct node*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct node*) ; 
 struct node* FUNC4 (int /*<<< orphan*/ ,struct node*) ; 
 int /*<<< orphan*/  siblings ; 

void FUNC5(sd_bus *b, struct node *n) {
        FUNC1(b);

        if (!n)
                return;

        if (n->child ||
            n->callbacks ||
            n->vtables ||
            n->enumerators ||
            n->object_managers)
                return;

        FUNC2(FUNC4(b->nodes, n->path) == n);

        if (n->parent)
                FUNC0(siblings, n->parent->child, n);

        FUNC3(n->path);
        FUNC5(b, n->parent);
        FUNC3(n);
}