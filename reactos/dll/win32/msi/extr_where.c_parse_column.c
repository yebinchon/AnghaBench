
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int column; int table; } ;
struct TYPE_10__ {int column; TYPE_5__* table; } ;
union ext_column {TYPE_3__ unparsed; TYPE_2__ parsed; } ;
typedef int UINT ;
struct TYPE_14__ {TYPE_1__* ops; } ;
struct TYPE_13__ {int col_count; TYPE_6__* view; struct TYPE_13__* next; } ;
struct TYPE_12__ {TYPE_5__* tables; } ;
struct TYPE_9__ {int (* get_column_info ) (TYPE_6__*,int,int *,int*,int *,int *) ;} ;
typedef TYPE_4__ MSIWHEREVIEW ;
typedef int LPCWSTR ;
typedef TYPE_5__ JOINTABLE ;


 int ERROR_BAD_QUERY_SYNTAX ;
 int ERROR_SUCCESS ;
 int WARN (char*,int ,int ) ;
 int debugstr_w (int ) ;
 scalar_t__ strcmpW (int ,int ) ;
 int stub1 (TYPE_6__*,int,int *,int*,int *,int *) ;
 int stub2 (TYPE_6__*,int,int *,int*,int *,int *) ;

__attribute__((used)) static UINT parse_column(MSIWHEREVIEW *wv, union ext_column *column,
                         UINT *column_type)
{
    JOINTABLE *table = wv->tables;
    UINT i, r;

    do
    {
        LPCWSTR table_name;

        if (column->unparsed.table)
        {
            r = table->view->ops->get_column_info(table->view, 1, ((void*)0), ((void*)0),
                                                  ((void*)0), &table_name);
            if (r != ERROR_SUCCESS)
                return r;
            if (strcmpW(table_name, column->unparsed.table) != 0)
                continue;
        }

        for(i = 1; i <= table->col_count; i++)
        {
            LPCWSTR col_name;

            r = table->view->ops->get_column_info(table->view, i, &col_name, column_type,
                                                  ((void*)0), ((void*)0));
            if(r != ERROR_SUCCESS )
                return r;

            if(strcmpW(col_name, column->unparsed.column))
                continue;
            column->parsed.column = i;
            column->parsed.table = table;
            return ERROR_SUCCESS;
        }
    }
    while ((table = table->next));

    WARN("Couldn't find column %s.%s\n", debugstr_w( column->unparsed.table ), debugstr_w( column->unparsed.column ) );
    return ERROR_BAD_QUERY_SYNTAX;
}
