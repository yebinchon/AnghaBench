
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {struct expr* left; struct expr* right; } ;
struct TYPE_5__ {int * table; } ;
struct TYPE_6__ {TYPE_1__ parsed; } ;
struct TYPE_8__ {TYPE_3__ expr; TYPE_2__ column; } ;
struct expr {int type; TYPE_4__ u; } ;
typedef int UINT ;
typedef int JOINTABLE ;
typedef int BOOL ;


 int CONST_EXPR ;
 int ERR (char*,int) ;
 int JOIN_TO_CONST_EXPR ;
 int add_to_array (int **,int *) ;
 int assert (int ) ;
 int in_array (int **,int *) ;

__attribute__((used)) static UINT reorder_check( const struct expr *expr, JOINTABLE **ordered_tables,
                           BOOL process_joins, JOINTABLE **lastused )
{
    UINT res = 0;

    switch (expr->type)
    {
        case 128:
        case 131:
        case 129:
            return 0;
        case 136:
        case 135:
        case 134:
            if (in_array(ordered_tables, expr->u.column.parsed.table))
                return JOIN_TO_CONST_EXPR;
            *lastused = expr->u.column.parsed.table;
            return CONST_EXPR;
        case 132:
        case 133:
            res = reorder_check(expr->u.expr.right, ordered_tables, process_joins, lastused);

        case 130:
            res += reorder_check(expr->u.expr.left, ordered_tables, process_joins, lastused);
            if (res == 0)
                return 0;
            if (res == CONST_EXPR)
                add_to_array(ordered_tables, *lastused);
            if (process_joins && res == JOIN_TO_CONST_EXPR + CONST_EXPR)
                add_to_array(ordered_tables, *lastused);
            return res;
        default:
            ERR("Unknown expr type: %i\n", expr->type);
            assert(0);
            return 0x1000000;
    }
}
