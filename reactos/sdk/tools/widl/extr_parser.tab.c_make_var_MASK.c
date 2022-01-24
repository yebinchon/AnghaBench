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
struct TYPE_4__ {char* name; int /*<<< orphan*/  loc_info; int /*<<< orphan*/  stgclass; int /*<<< orphan*/ * eval; int /*<<< orphan*/ * attrs; int /*<<< orphan*/ * type; } ;
typedef  TYPE_1__ var_t ;

/* Variables and functions */
 int /*<<< orphan*/  STG_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 

var_t *FUNC2(char *name)
{
  var_t *v = FUNC1(sizeof(var_t));
  v->name = name;
  v->type = NULL;
  v->attrs = NULL;
  v->eval = NULL;
  v->stgclass = STG_NONE;
  FUNC0(&v->loc_info);
  return v;
}