#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  children; } ;
struct bus_match_node {scalar_t__ type; TYPE_1__ compare; scalar_t__ child; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ BUS_MATCH_ROOT ; 
 int /*<<< orphan*/  FUNC1 (struct bus_match_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct bus_match_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct bus_match_node *node) {
        FUNC1(node);

        if (node->type == BUS_MATCH_ROOT)
                return false;

        if (node->child)
                return false;

        if (FUNC0(node->type) && !FUNC3(node->compare.children))
                return true;

        FUNC2(node);
        return true;
}