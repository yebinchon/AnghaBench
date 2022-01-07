
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_type ;
typedef int sqliterk_table ;
typedef int sqliterk_btree ;


 int sqliterkBtreeGetType (int *) ;

sqliterk_type sqliterk_table_type(sqliterk_table *table)
{
    return (sqliterk_type) sqliterkBtreeGetType((sqliterk_btree *) table);
}
