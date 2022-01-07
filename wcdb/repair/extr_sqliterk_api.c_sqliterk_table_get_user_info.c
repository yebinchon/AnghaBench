
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_table ;
typedef int sqliterk_btree ;


 void* sqliterkBtreeGetUserInfo (int *) ;

void *sqliterk_table_get_user_info(sqliterk_table *table)
{
    return sqliterkBtreeGetUserInfo((sqliterk_btree *) table);
}
