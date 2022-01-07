
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ op; struct expr* right; struct expr* left; } ;
struct TYPE_6__ {int * sval; TYPE_2__* propval; TYPE_1__ expr; } ;
struct expr {scalar_t__ type; TYPE_3__ u; } ;
typedef int WCHAR ;
struct TYPE_5__ {int name; } ;


 scalar_t__ EXPR_COMPLEX ;
 scalar_t__ EXPR_PROPVAL ;
 scalar_t__ EXPR_SVAL ;
 scalar_t__ OP_EQ ;
 int prop_sidW ;
 int strcmpiW (int ,int ) ;

__attribute__((used)) static const WCHAR *find_sid_str( const struct expr *cond )
{
    const struct expr *left, *right;
    const WCHAR *ret = ((void*)0);

    if (!cond || cond->type != EXPR_COMPLEX || cond->u.expr.op != OP_EQ) return ((void*)0);

    left = cond->u.expr.left;
    right = cond->u.expr.right;
    if (left->type == EXPR_PROPVAL && right->type == EXPR_SVAL && !strcmpiW( left->u.propval->name, prop_sidW ))
    {
        ret = right->u.sval;
    }
    else if (left->type == EXPR_SVAL && right->type == EXPR_PROPVAL && !strcmpiW( right->u.propval->name, prop_sidW ))
    {
        ret = left->u.sval;
    }
    return ret;
}
