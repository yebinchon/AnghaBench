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
struct TYPE_3__ {long value; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ node_int ;
typedef  int /*<<< orphan*/  node ;

/* Variables and functions */
 int /*<<< orphan*/  NODE_INT ; 
 TYPE_1__* FUNC0 (int) ; 

node*
FUNC1(long i)
{
  node_int* ni = FUNC0(sizeof(node_int));

  ni->type = NODE_INT;
  ni->value = i;
  return (node*)ni;
}