#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct query_node {struct query_node* owner; struct query_node* id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct query_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct query_node*) ; 
 int /*<<< orphan*/  outstanding ; 

__attribute__((used)) static void FUNC2(struct query_node *qun) {
  FUNC0(outstanding,qun);
  FUNC1(qun->id);
  FUNC1(qun->owner);
  FUNC1(qun);
}