
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_table ;
typedef int sqliterk_btree ;


 char const* sqliterkBtreeGetName (int *) ;

const char *sqliterk_table_name(sqliterk_table *table)
{
    return sqliterkBtreeGetName((sqliterk_btree *) table);
}
