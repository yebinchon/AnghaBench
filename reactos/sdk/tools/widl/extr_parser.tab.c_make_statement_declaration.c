
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ stgclass; int attrs; int name; int type; scalar_t__ eval; } ;
typedef TYPE_2__ var_t ;
struct TYPE_9__ {TYPE_2__* var; } ;
struct TYPE_11__ {TYPE_1__ u; } ;
typedef TYPE_3__ statement_t ;


 scalar_t__ STG_EXTERN ;
 scalar_t__ STG_NONE ;
 scalar_t__ STG_REGISTER ;
 int STMT_DECLARATION ;
 scalar_t__ TYPE_FUNCTION ;
 int check_function_attrs (int ,int ) ;
 int error_loc (char*) ;
 scalar_t__ is_const_decl (TYPE_2__*) ;
 TYPE_3__* make_statement (int ) ;
 int reg_const (TYPE_2__*) ;
 scalar_t__ type_get_type (int ) ;
 int warning (char*,int ) ;

__attribute__((used)) static statement_t *make_statement_declaration(var_t *var)
{
    statement_t *stmt = make_statement(STMT_DECLARATION);
    stmt->u.var = var;
    if (var->stgclass == STG_EXTERN && var->eval)
        warning("'%s' initialised and declared extern\n", var->name);
    if (is_const_decl(var))
    {
        if (var->eval)
            reg_const(var);
    }
    else if (type_get_type(var->type) == TYPE_FUNCTION)
        check_function_attrs(var->name, var->attrs);
    else if (var->stgclass == STG_NONE || var->stgclass == STG_REGISTER)
        error_loc("instantiation of data is illegal\n");
    return stmt;
}
