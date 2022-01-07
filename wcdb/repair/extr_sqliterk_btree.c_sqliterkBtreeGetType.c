
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqliterk_btree_type ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ sqliterk_btree ;


 int sqliterk_btree_type_unknown ;

sqliterk_btree_type sqliterkBtreeGetType(sqliterk_btree *btree)
{
    if (!btree) {
        return sqliterk_btree_type_unknown;
    }
    return btree->type;
}
