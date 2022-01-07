
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lval; } ;
struct TYPE_6__ {int type; int cval; int is_const; TYPE_1__ u; int * ref; } ;
typedef TYPE_2__ expr_t ;
typedef enum expr_type { ____Placeholder_expr_type } expr_type ;


 int EXPR_HEXNUM ;
 int EXPR_NUM ;
 int EXPR_TRUEFALSE ;
 int FALSE ;
 int TRUE ;
 int assert (int) ;
 TYPE_2__* xmalloc (int) ;

expr_t *make_exprl(enum expr_type type, int val)
{
    expr_t *e = xmalloc(sizeof(expr_t));
    e->type = type;
    e->ref = ((void*)0);
    e->u.lval = val;
    e->is_const = FALSE;

    if (type == EXPR_NUM || type == EXPR_HEXNUM || type == EXPR_TRUEFALSE)
    {

        assert(type != EXPR_TRUEFALSE || val == 0 || val == 1);
        e->is_const = TRUE;
        e->cval = val;
    }
    return e;
}
