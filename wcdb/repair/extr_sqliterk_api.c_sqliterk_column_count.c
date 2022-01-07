
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_column ;


 int sqliterkColumnGetValues (int *) ;
 int sqliterkValuesGetCount (int ) ;

int sqliterk_column_count(sqliterk_column *column)
{
    return sqliterkValuesGetCount(sqliterkColumnGetValues(column));
}
