
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_column ;
typedef int int64_t ;


 int sqliterkColumnGetRowId (int *) ;

int64_t sqliterk_column_rowid(sqliterk_column *column)
{
    return sqliterkColumnGetRowId(column);
}
