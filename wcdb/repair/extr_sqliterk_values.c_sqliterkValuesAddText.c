
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_values ;


 int sqliterkValuesAddNoTerminatorText (int *,char const*,int) ;
 scalar_t__ strlen (char const*) ;

int sqliterkValuesAddText(sqliterk_values *values, const char *t)
{
    return sqliterkValuesAddNoTerminatorText(values, t, (int) strlen(t));
}
