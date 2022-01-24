#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ var_t ;
typedef  int /*<<< orphan*/  var_list_t ;
struct TYPE_11__ {TYPE_4__* structure; } ;
struct TYPE_13__ {int /*<<< orphan*/  defined; TYPE_1__ details; } ;
typedef  TYPE_3__ type_t ;
struct TYPE_14__ {int /*<<< orphan*/ * fields; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TYPE_ENCAPSULATED_UNION ; 
 void* FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tsUNION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

type_t *FUNC6(char *name, var_t *switch_field, var_t *union_field, var_list_t *cases)
{
    type_t *t = FUNC1(TYPE_ENCAPSULATED_UNION, name, NULL, tsUNION);
    if (!union_field) union_field = FUNC2( FUNC5("tagged_union") );
    union_field->type = FUNC3(NULL, TRUE, cases);
    t->details.structure = FUNC4(sizeof(*t->details.structure));
    t->details.structure->fields = FUNC0( NULL, switch_field );
    t->details.structure->fields = FUNC0( t->details.structure->fields, union_field );
    t->defined = TRUE;
    return t;
}