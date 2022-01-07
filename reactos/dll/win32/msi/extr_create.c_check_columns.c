
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int column; struct TYPE_3__* next; } ;
typedef TYPE_1__ column_info ;
typedef int UINT ;


 int ERROR_BAD_QUERY_SYNTAX ;
 int ERROR_SUCCESS ;
 int strcmpW (int ,int ) ;

__attribute__((used)) static UINT check_columns( const column_info *col_info )
{
    const column_info *c1, *c2;


    for( c1 = col_info; c1; c1 = c1->next )
        for( c2 = c1->next; c2; c2 = c2->next )
            if (!strcmpW( c1->column, c2->column ))
                return ERROR_BAD_QUERY_SYNTAX;

    return ERROR_SUCCESS;
}
