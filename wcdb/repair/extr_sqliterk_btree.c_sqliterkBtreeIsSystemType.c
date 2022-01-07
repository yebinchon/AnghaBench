
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqliterk_btree_type ;


 scalar_t__ sqliterk_btree_type_system_begin ;
 scalar_t__ sqliterk_btree_type_system_end ;

int sqliterkBtreeIsSystemType(sqliterk_btree_type type)
{
    if (type >= sqliterk_btree_type_system_begin &&
        type < sqliterk_btree_type_system_end) {
        return 1;
    }
    return 0;
}
