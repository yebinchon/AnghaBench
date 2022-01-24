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
struct TYPE_3__ {int /*<<< orphan*/ * args; int /*<<< orphan*/ * func; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ node_fcall ;
typedef  int /*<<< orphan*/  node ;

/* Variables and functions */
 int /*<<< orphan*/  NODE_FCALL ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

node*
FUNC3(node* func, node* args, node* blk)
{
  node_fcall* ncall = FUNC0(sizeof(node_fcall));
  ncall->type = NODE_FCALL;
  ncall->func = func;
  if (!args) args = FUNC1();
  if (blk) {
    FUNC2(args, blk);
  }
  ncall->args = args;
  return (node*)ncall;
}