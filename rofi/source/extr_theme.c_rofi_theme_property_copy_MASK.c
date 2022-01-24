#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* def_value; int /*<<< orphan*/ * ref; void* name; } ;
struct TYPE_8__ {TYPE_1__ link; int /*<<< orphan*/  list; void* s; } ;
struct TYPE_9__ {int type; TYPE_2__ value; void* name; } ;
typedef  TYPE_3__ Property ;

/* Variables and functions */
#define  P_LINK 130 
#define  P_LIST 129 
#define  P_STRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  rofi_g_list_strdup ; 
 TYPE_3__* FUNC2 (int) ; 

Property* FUNC3 ( Property *p )
{
    Property *retv = FUNC2 ( p->type );
    retv->name = FUNC1 ( p->name );

    switch ( p->type )
    {
    case P_STRING:
        retv->value.s = FUNC1 ( p->value.s );
        break;
    case P_LIST:
        retv->value.list = FUNC0 ( p->value.list, rofi_g_list_strdup, NULL );
        break;
    case P_LINK:
        retv->value.link.name = FUNC1 ( p->value.link.name );
        retv->value.link.ref  = NULL;
        if ( p->value.link.def_value ){
            retv->value.link.def_value = FUNC3(p->value.link.def_value);
        }
        break;
    default:
        retv->value = p->value;
    }
    return retv;
}