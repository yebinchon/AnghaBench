
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_table ;
typedef int sqliterk_btree ;


 int sqliterkBtreeSetUserInfo (int *,void*) ;

void sqliterk_table_set_user_info(sqliterk_table *table, void *userInfo)
{
    sqliterkBtreeSetUserInfo((sqliterk_btree *) table, userInfo);
}
