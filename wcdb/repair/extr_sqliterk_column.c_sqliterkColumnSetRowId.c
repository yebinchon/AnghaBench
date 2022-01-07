
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rowid; } ;
typedef TYPE_1__ sqliterk_column ;
typedef int int64_t ;



void sqliterkColumnSetRowId(sqliterk_column *column, int64_t rowid)
{
    if (column) {
        column->rowid = rowid;
    }
}
