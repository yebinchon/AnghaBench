
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct expr* right; int op; struct expr* left; } ;
struct TYPE_4__ {TYPE_1__ expr; } ;
struct expr {TYPE_2__ u; int type; } ;
typedef int UINT ;


 int EXPR_COMPLEX ;
 struct expr* parser_alloc (void*,int) ;

__attribute__((used)) static struct expr * EXPR_complex( void *info, struct expr *l, UINT op, struct expr *r )
{
    struct expr *e = parser_alloc( info, sizeof *e );
    if( e )
    {
        e->type = EXPR_COMPLEX;
        e->u.expr.left = l;
        e->u.expr.op = op;
        e->u.expr.right = r;
    }
    return e;
}
