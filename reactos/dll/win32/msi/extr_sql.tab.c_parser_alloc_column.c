
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * next; scalar_t__ type; int * val; void* column; void* table; } ;
typedef TYPE_1__ column_info ;
typedef void* LPCWSTR ;


 TYPE_1__* parser_alloc (void*,int) ;

__attribute__((used)) static column_info *parser_alloc_column( void *info, LPCWSTR table, LPCWSTR column )
{
    column_info *col;

    col = parser_alloc( info, sizeof (*col) );
    if( col )
    {
        col->table = table;
        col->column = column;
        col->val = ((void*)0);
        col->type = 0;
        col->next = ((void*)0);
    }

    return col;
}
