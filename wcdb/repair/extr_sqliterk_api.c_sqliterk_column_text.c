
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_column ;


 int sqliterkColumnGetValues (int *) ;
 char const* sqliterkValuesGetText (int ,int) ;

const char *sqliterk_column_text(sqliterk_column *column, int index)
{
    return sqliterkValuesGetText(sqliterkColumnGetValues(column), index);
}
