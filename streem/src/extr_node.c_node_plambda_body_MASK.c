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
struct TYPE_2__ {int /*<<< orphan*/ * body; } ;
typedef  TYPE_1__ node_plambda ;
typedef  int /*<<< orphan*/  node ;

/* Variables and functions */

node*
FUNC0(node* n, node* body)
{
  node_plambda* lambda = (node_plambda*)n;
  lambda->body = body;
  return (node*)lambda;
}