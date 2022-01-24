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
struct TYPE_9__ {TYPE_3__* enumeration; } ;
struct TYPE_10__ {char const* name; int /*<<< orphan*/  defined; TYPE_1__ details; struct namespace* namespace; } ;
typedef  TYPE_2__ type_t ;
struct namespace {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/ * enums; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TYPE_ENUM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (char const*,struct namespace*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char const*,struct namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tsENUM ; 
 TYPE_3__* FUNC4 (int) ; 

type_t *FUNC5(const char *name, struct namespace *namespace, int defined, var_list_t *enums)
{
    type_t *tag_type = name ? FUNC1(name, namespace, tsENUM) : NULL;
    type_t *t = FUNC2(TYPE_ENUM);
    t->name = name;
    t->namespace = namespace;

    if (tag_type && tag_type->details.enumeration)
        t->details.enumeration = tag_type->details.enumeration;
    else if (defined)
    {
        t->details.enumeration = FUNC4(sizeof(*t->details.enumeration));
        t->details.enumeration->enums = enums;
        t->defined = TRUE;
    }

    if (name)
    {
        if (defined)
            FUNC3(t, name, namespace, tsENUM);
        else
            FUNC0(t);
    }
    return t;
}