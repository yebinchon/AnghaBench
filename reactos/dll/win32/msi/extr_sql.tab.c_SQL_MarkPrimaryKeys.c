
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; int column; struct TYPE_6__* next; } ;
typedef TYPE_1__ column_info ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int MSITYPE_KEY ;
 scalar_t__ TRUE ;
 scalar_t__ strcmpW (int ,int ) ;
 int swap_columns (TYPE_1__**,TYPE_1__*,int) ;

__attribute__((used)) static BOOL SQL_MarkPrimaryKeys( column_info **cols,
                                 column_info *keys )
{
    column_info *k;
    BOOL found = TRUE;
    int count;

    for( k = keys, count = 0; k && found; k = k->next, count++ )
    {
        column_info *c;
        int idx;

        found = FALSE;
        for( c = *cols, idx = 0; c && !found; c = c->next, idx++ )
        {
            if( strcmpW( k->column, c->column ) )
                continue;
            c->type |= MSITYPE_KEY;
            found = TRUE;
            if (idx != count)
                swap_columns( cols, c, count );
        }
    }

    return found;
}
