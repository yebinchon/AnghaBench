
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqliterk_page ;
struct TYPE_3__ {int * rootpage; } ;
typedef TYPE_1__ sqliterk_btree ;



sqliterk_page *sqliterkBtreeGetRootPage(sqliterk_btree *btree)
{
    if (!btree) {
        return ((void*)0);
    }
    return btree->rootpage;
}
