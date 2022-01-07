
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct property {int dummy; } ;
struct parser {int dummy; } ;
struct TYPE_2__ {struct property const* propval; } ;
struct expr {TYPE_1__ u; int type; } ;


 int EXPR_PROPVAL ;
 struct expr* alloc_mem (struct parser*,int) ;

__attribute__((used)) static struct expr *expr_propval( struct parser *parser, const struct property *prop )
{
    struct expr *e = alloc_mem( parser, sizeof *e );
    if (e)
    {
        e->type = EXPR_PROPVAL;
        e->u.propval = prop;
    }
    return e;
}
