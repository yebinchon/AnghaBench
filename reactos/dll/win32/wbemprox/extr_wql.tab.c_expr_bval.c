
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parser {int dummy; } ;
struct TYPE_2__ {int ival; } ;
struct expr {TYPE_1__ u; int type; } ;


 int EXPR_BVAL ;
 struct expr* alloc_mem (struct parser*,int) ;

__attribute__((used)) static struct expr *expr_bval( struct parser *parser, int val )
{
    struct expr *e = alloc_mem( parser, sizeof *e );
    if (e)
    {
        e->type = EXPR_BVAL;
        e->u.ival = val;
    }
    return e;
}
