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
typedef  int /*<<< orphan*/  type_t ;
struct typenode {int /*<<< orphan*/  entry; int /*<<< orphan*/ * type; } ;

/* Variables and functions */
 int /*<<< orphan*/  incomplete_types ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct typenode* FUNC1 (int) ; 

void FUNC2(type_t *t)
{
  struct typenode *tn = FUNC1(sizeof *tn);
  tn->type = t;
  FUNC0(&incomplete_types, &tn->entry);
}