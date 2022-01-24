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
struct TYPE_3__ {void* opt_else; void* then; int /*<<< orphan*/ * cond; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ node_if ;
typedef  int /*<<< orphan*/  node ;

/* Variables and functions */
 int /*<<< orphan*/  NODE_IF ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 

node*
FUNC2(node* cond, node* then, node* opt_else)
{
  node_if* nif = FUNC1(sizeof(node_if));
  nif->type = NODE_IF;
  nif->cond = cond;
  nif->then = FUNC0(then);
  nif->opt_else = FUNC0(opt_else);
  return (node*)nif;
}