
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {char* name; TYPE_2__* eval; } ;
typedef TYPE_3__ var_t ;
struct TYPE_8__ {char* sval; } ;
struct TYPE_11__ {int type; char cval; void* is_const; TYPE_1__ u; int * ref; } ;
typedef TYPE_4__ expr_t ;
typedef enum expr_type { ____Placeholder_expr_type } expr_type ;
struct TYPE_9__ {char cval; } ;




 void* FALSE ;
 void* TRUE ;
 int error_loc (char*) ;
 TYPE_3__* find_const (char*,int ) ;
 int free (char*) ;
 TYPE_4__* xmalloc (int) ;

expr_t *make_exprs(enum expr_type type, char *val)
{
    expr_t *e;
    e = xmalloc(sizeof(expr_t));
    e->type = type;
    e->ref = ((void*)0);
    e->u.sval = val;
    e->is_const = FALSE;

    switch (type)
    {
    case 128:
    {
        var_t *c = find_const(val, 0);
        if (c)
        {
            e->u.sval = c->name;
            free(val);
            e->is_const = TRUE;
            e->cval = c->eval->cval;
        }
        break;
    }
    case 129:
        if (!val[0])
            error_loc("empty character constant\n");
        else if (val[1])
            error_loc("multi-character constants are endian dependent\n");
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
