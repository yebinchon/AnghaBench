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
typedef  int /*<<< orphan*/  type_t ;
struct TYPE_3__ {int /*<<< orphan*/  data; int /*<<< orphan*/  link; } ;
typedef  TYPE_1__ type_pool_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  type_pool ; 
 TYPE_1__* FUNC1 (int) ; 

type_t *FUNC2(void)
{
  type_pool_node_t *node = FUNC1(sizeof *node);
  FUNC0(&type_pool, &node->link);
  return &node->data;
}