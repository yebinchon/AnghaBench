#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  var_list_t ;
struct TYPE_9__ {TYPE_3__* structure; } ;
struct TYPE_10__ {char* name; int /*<<< orphan*/  defined; TYPE_1__ details; struct namespace* namespace; } ;
typedef  TYPE_2__ type_t ;
struct namespace {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/ * fields; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TYPE_STRUCT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ do_typelib ; 
 TYPE_2__* FUNC1 (char*,struct namespace*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,struct namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tsSTRUCT ; 
 TYPE_3__* FUNC4 (int) ; 

type_t *FUNC5(char *name, struct namespace *namespace, int defined, var_list_t *fields)
{
    type_t *tag_type = name ? FUNC1(name, namespace, tsSTRUCT) : NULL;
    type_t *t;

    /* avoid creating duplicate typelib type entries */
    if (tag_type && do_typelib) return tag_type;

    t = FUNC2(TYPE_STRUCT);
    t->name = name;
    t->namespace = namespace;

    if (tag_type && tag_type->details.structure)
        t->details.structure = tag_type->details.structure;
    else if (defined)
    {
        t->details.structure = FUNC4(sizeof(*t->details.structure));
        t->details.structure->fields = fields;
        t->defined = TRUE;
    }
    if (name)
    {
        if (defined)
            FUNC3(t, name, namespace, tsSTRUCT);
        else
            FUNC0(t);
    }
    return t;
}