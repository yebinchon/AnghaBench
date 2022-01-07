
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* str; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ statement_t ;


 int STMT_IMPORTLIB ;
 TYPE_2__* make_statement (int ) ;

__attribute__((used)) static statement_t *make_statement_importlib(const char *str)
{
    statement_t *stmt = make_statement(STMT_IMPORTLIB);
    stmt->u.str = str;
    return stmt;
}
