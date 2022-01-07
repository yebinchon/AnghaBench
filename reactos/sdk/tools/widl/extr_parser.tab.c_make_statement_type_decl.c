
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int type_t ;
struct TYPE_5__ {int * type; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ statement_t ;


 int STMT_TYPE ;
 TYPE_2__* make_statement (int ) ;

__attribute__((used)) static statement_t *make_statement_type_decl(type_t *type)
{
    statement_t *stmt = make_statement(STMT_TYPE);
    stmt->u.type = type;
    return stmt;
}
