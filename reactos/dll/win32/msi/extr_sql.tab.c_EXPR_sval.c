
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sql_str {int dummy; } ;
struct TYPE_2__ {int sval; } ;
struct expr {TYPE_1__ u; int type; } ;
typedef int LPWSTR ;


 scalar_t__ ERROR_SUCCESS ;
 int EXPR_SVAL ;
 scalar_t__ SQL_getstring (void*,struct sql_str const*,int *) ;
 struct expr* parser_alloc (void*,int) ;

__attribute__((used)) static struct expr * EXPR_sval( void *info, const struct sql_str *str )
{
    struct expr *e = parser_alloc( info, sizeof *e );
    if( e )
    {
        e->type = EXPR_SVAL;
        if( SQL_getstring( info, str, (LPWSTR *)&e->u.sval ) != ERROR_SUCCESS )
            return ((void*)0);
    }
    return e;
}
