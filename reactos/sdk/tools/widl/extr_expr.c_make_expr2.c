
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* ext; } ;
struct TYPE_8__ {int type; int cval; void* is_const; TYPE_1__ u; struct TYPE_8__* ref; } ;
typedef TYPE_2__ expr_t ;
typedef enum expr_type { ____Placeholder_expr_type } expr_type ;
 void* FALSE ;
 void* TRUE ;
 int error_loc (char*) ;
 TYPE_2__* xmalloc (int) ;

expr_t *make_expr2(enum expr_type type, expr_t *expr1, expr_t *expr2)
{
    expr_t *e;
    e = xmalloc(sizeof(expr_t));
    e->type = type;
    e->ref = expr1;
    e->u.ext = expr2;
    e->is_const = FALSE;

    if (expr1->is_const && expr2->is_const)
    {
        e->is_const = TRUE;
        switch (type)
        {
        case 145:
            e->cval = expr1->cval + expr2->cval;
            break;
        case 129:
            e->cval = expr1->cval - expr2->cval;
            break;
        case 134:
            if (expr2->cval == 0)
            {
                error_loc("divide by zero in expression\n");
                e->cval = 0;
            }
            else
                e->cval = expr1->cval % expr2->cval;
            break;
        case 133:
            e->cval = expr1->cval * expr2->cval;
            break;
        case 143:
            if (expr2->cval == 0)
            {
                error_loc("divide by zero in expression\n");
                e->cval = 0;
            }
            else
                e->cval = expr1->cval / expr2->cval;
            break;
        case 132:
            e->cval = expr1->cval | expr2->cval;
            break;
        case 144:
            e->cval = expr1->cval & expr2->cval;
            break;
        case 131:
            e->cval = expr1->cval << expr2->cval;
            break;
        case 130:
            e->cval = expr1->cval >> expr2->cval;
            break;
        case 135:
            e->cval = expr1->cval || expr2->cval;
            break;
        case 136:
            e->cval = expr1->cval && expr2->cval;
            break;
        case 128:
            e->cval = expr1->cval ^ expr2->cval;
            break;
        case 142:
            e->cval = expr1->cval == expr2->cval;
            break;
        case 139:
            e->cval = expr1->cval != expr2->cval;
            break;
        case 141:
            e->cval = expr1->cval > expr2->cval;
            break;
        case 138:
            e->cval = expr1->cval < expr2->cval;
            break;
        case 140:
            e->cval = expr1->cval >= expr2->cval;
            break;
        case 137:
            e->cval = expr1->cval <= expr2->cval;
            break;
        default:
            e->is_const = FALSE;
            break;
        }
    }
    return e;
}
