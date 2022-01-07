
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ values; scalar_t__ overflowPages; } ;
typedef TYPE_1__ sqliterk_column ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int sqliterkOSFree (TYPE_1__*) ;
 int sqliterkValuesFree (scalar_t__) ;

int sqliterkColumnFree(sqliterk_column *column)
{
    if (!column) {
        return SQLITERK_MISUSE;
    }
    if (column->overflowPages) {
        sqliterkValuesFree(column->overflowPages);
    }
    if (column->values) {
        sqliterkValuesFree(column->values);
    }
    sqliterkOSFree(column);
    return SQLITERK_OK;
}
