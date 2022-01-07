
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* onEndParseBtree ) (int ,TYPE_2__*,int) ;int (* onBeginParseBtree ) (int ,TYPE_2__*) ;} ;
struct TYPE_8__ {int rk; TYPE_1__ notify; int rootpage; } ;
typedef TYPE_2__ sqliterk_btree ;


 int SQLITERK_MISUSE ;
 int sqliterkBtreeParsePage (TYPE_2__*,int ) ;
 int sqliterkPageGetPageno (int ) ;
 int stub1 (int ,TYPE_2__*) ;
 int stub2 (int ,TYPE_2__*,int) ;

int sqliterkBtreeParse(sqliterk_btree *btree)
{
    if (!btree) {
        return SQLITERK_MISUSE;
    }
    if (btree->notify.onBeginParseBtree) {
        btree->notify.onBeginParseBtree(btree->rk, btree);
    }
    int rc =
        sqliterkBtreeParsePage(btree, sqliterkPageGetPageno(btree->rootpage));
    if (btree->notify.onEndParseBtree) {
        btree->notify.onEndParseBtree(btree->rk, btree, rc);
    }
    return rc;
}
