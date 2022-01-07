
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ lval; } ;
struct TYPE_7__ {int type; int cval; void* is_const; TYPE_1__ u; struct TYPE_7__* ref; } ;
typedef TYPE_2__ expr_t ;
typedef enum expr_type { ____Placeholder_expr_type } expr_type ;






 void* FALSE ;
 void* TRUE ;
 TYPE_2__* xmalloc (int) ;

expr_t *make_expr1(enum expr_type type, expr_t *expr)
{
    expr_t *e;
    e = xmalloc(sizeof(expr_t));
    e->type = type;
    e->ref = expr;
    e->u.lval = 0;
    e->is_const = FALSE;

    if (expr->is_const)
    {
        e->is_const = TRUE;
        switch (type)
        {
        case 131:
            e->cval = !expr->cval;
            break;
        case 128:
            e->cval = +expr->cval;
            break;
        case 130:
            e->cval = -expr->cval;
            break;
        case 129:
            e->cval = ~expr->cval;
            break;
        default:
            e->is_const = FALSE;
            break;
        }
    }
    return e;
}
