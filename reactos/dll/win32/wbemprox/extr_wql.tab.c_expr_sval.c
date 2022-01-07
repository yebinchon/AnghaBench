
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string {int dummy; } ;
struct parser {int dummy; } ;
struct TYPE_2__ {int sval; } ;
struct expr {TYPE_1__ u; int type; } ;


 int EXPR_SVAL ;
 struct expr* alloc_mem (struct parser*,int) ;
 int get_string (struct parser*,struct string const*) ;

__attribute__((used)) static struct expr *expr_sval( struct parser *parser, const struct string *str )
{
    struct expr *e = alloc_mem( parser, sizeof *e );
    if (e)
    {
        e->type = EXPR_SVAL;
        e->u.sval = get_string( parser, str );
        if (!e->u.sval)
            return ((void*)0);
    }
    return e;
}
