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
struct TYPE_3__ {int /*<<< orphan*/ * body; int /*<<< orphan*/ * args; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ node_lambda ;
typedef  int /*<<< orphan*/  node ;

/* Variables and functions */
 int /*<<< orphan*/  NODE_LAMBDA ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

node*
FUNC5(node* args, node* compstmt)
{
  node_lambda* lambda = FUNC0(sizeof(node_lambda));
  lambda->type = NODE_LAMBDA;
  if (args) {
    FUNC3(args, FUNC4("self", 4));
  }
  else {
    args = FUNC2();
    FUNC1(args, FUNC4("self", 4));
  }
  lambda->args = args;
  lambda->body = compstmt;
  return (node*)lambda;
}