
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct list {int dummy; } ;
typedef int UINT ;
struct TYPE_9__ {TYPE_1__* ops; } ;
struct TYPE_8__ {int r; TYPE_3__** view; struct list* mem; scalar_t__ len; scalar_t__ n; int command; int * db; } ;
struct TYPE_7__ {int (* delete ) (TYPE_3__*) ;} ;
typedef TYPE_2__ SQL_input ;
typedef TYPE_3__ MSIVIEW ;
typedef int MSIDATABASE ;
typedef int LPCWSTR ;


 int ERROR_BAD_QUERY_SYNTAX ;
 int ERROR_SUCCESS ;
 int TRACE (char*,int) ;
 int sql_parse (TYPE_2__*) ;
 int stub1 (TYPE_3__*) ;

UINT MSI_ParseSQL( MSIDATABASE *db, LPCWSTR command, MSIVIEW **phview,
                   struct list *mem )
{
    SQL_input sql;
    int r;

    *phview = ((void*)0);

    sql.db = db;
    sql.command = command;
    sql.n = 0;
    sql.len = 0;
    sql.r = ERROR_BAD_QUERY_SYNTAX;
    sql.view = phview;
    sql.mem = mem;

    r = sql_parse(&sql);

    TRACE("Parse returned %d\n", r);
    if( r )
    {
        if (*sql.view)
        {
            (*sql.view)->ops->delete(*sql.view);
            *sql.view = ((void*)0);
        }
        return sql.r;
    }

    return ERROR_SUCCESS;
}
