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
struct TYPE_4__ {scalar_t__ key; struct TYPE_4__* rlink; struct TYPE_4__* llink; } ;
typedef  TYPE_1__ node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void FUNC1 (void*) ; 

__attribute__((used)) static void
FUNC2(node_t* root, void (*free_action)(void *))
{
  if (root->llink != NULL)
    FUNC2(root->llink, free_action);
  if (root->rlink != NULL)
    FUNC2(root->rlink, free_action);

  (*free_action) ((void *) root->key);
  FUNC0(root);
}