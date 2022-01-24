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
struct TYPE_3__ {int /*<<< orphan*/ * rhs; int /*<<< orphan*/  op; int /*<<< orphan*/ * lhs; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ node_op ;
typedef  int /*<<< orphan*/  node ;

/* Variables and functions */
 int /*<<< orphan*/  NODE_OP ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

node*
FUNC3(const char* op, node* lhs, node* rhs)
{
  node_op* nop = FUNC0(sizeof(node_op));
  nop->type = NODE_OP;
  nop->lhs = lhs;
  nop->op = FUNC1(op, FUNC2(op));
  nop->rhs = rhs;
  return (node*)nop;
}