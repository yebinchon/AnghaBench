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
typedef  int /*<<< orphan*/  node_string ;
struct TYPE_3__ {int /*<<< orphan*/ * args; int /*<<< orphan*/  ident; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ node_call ;
typedef  int /*<<< orphan*/  node ;

/* Variables and functions */
 int /*<<< orphan*/  NODE_CALL ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

node*
FUNC4(node_string ident, node* recv, node* args, node* blk)
{
  node_call* ncall = FUNC0(sizeof(node_call));
  ncall->type = NODE_CALL;
  ncall->ident = ident;
  if (!args) args = FUNC1();
  if (recv) {
    FUNC3(args, recv);
  }
  if (blk) {
    FUNC2(args, blk);
  }
  ncall->args = args;
  return (node*)ncall;
}