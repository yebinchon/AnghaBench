#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* name; TYPE_2__* eval; } ;
typedef  TYPE_3__ var_t ;
struct TYPE_8__ {char* sval; } ;
struct TYPE_11__ {int type; char cval; void* is_const; TYPE_1__ u; int /*<<< orphan*/ * ref; } ;
typedef  TYPE_4__ expr_t ;
typedef  enum expr_type { ____Placeholder_expr_type } expr_type ;
struct TYPE_9__ {char cval; } ;

/* Variables and functions */
#define  EXPR_CHARCONST 129 
#define  EXPR_IDENTIFIER 128 
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_4__* FUNC3 (int) ; 

expr_t *FUNC4(enum expr_type type, char *val)
{
    expr_t *e;
    e = FUNC3(sizeof(expr_t));
    e->type = type;
    e->ref = NULL;
    e->u.sval = val;
    e->is_const = FALSE;
    /* check for predefined constants */
    switch (type)
    {
    case EXPR_IDENTIFIER:
    {
        var_t *c = FUNC1(val, 0);
        if (c)
        {
            e->u.sval = c->name;
            FUNC2(val);
            e->is_const = TRUE;
            e->cval = c->eval->cval;
        }
        break;
    }
    case EXPR_CHARCONST:
        if (!val[0])
            FUNC0("empty character constant\n");
        else if (val[1])
            FUNC0("multi-character constants are endian dependent\n");
        else
        {
            e->is_const = TRUE;
            e->cval = *val;
        }
        break;
    default:
        break;
    }
    return e;
}