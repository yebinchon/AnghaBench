
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_table ;
typedef int sqliterk_page ;
typedef int sqliterk_btree ;


 int * sqliterkBtreeGetRootPage (int *) ;
 int sqliterkPageGetPageno (int *) ;

int sqliterk_table_root(sqliterk_table *table)
{
    sqliterk_page *page = sqliterkBtreeGetRootPage((sqliterk_btree *) table);
    return sqliterkPageGetPageno(page);
}
