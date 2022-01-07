
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int values; int overflowPages; scalar_t__ rowid; } ;
typedef TYPE_1__ sqliterk_column ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int sqliterkValuesClear (int ) ;

int sqliterkColumnClear(sqliterk_column *column)
{
    if (!column) {
        return SQLITERK_MISUSE;
    }
    column->rowid = 0;
    sqliterkValuesClear(column->overflowPages);
    sqliterkValuesClear(column->values);
    return SQLITERK_OK;
}
