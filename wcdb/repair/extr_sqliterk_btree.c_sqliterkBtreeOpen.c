
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqliterk_pager ;
struct TYPE_6__ {int maxLocal; int minLocal; int maxLeaf; int minLeaf; int * rk; int * pager; int rootpage; int type; } ;
typedef TYPE_1__ sqliterk_btree ;
typedef int sqliterk ;


 int SQLITERK_DAMAGED ;
 int SQLITERK_MISUSE ;
 int SQLITERK_NOMEM ;
 int SQLITERK_OK ;
 int sqliterkBtreeClose (TYPE_1__*) ;
 int sqliterkBtreeSetMeta (TYPE_1__*,char*,int ) ;
 TYPE_1__* sqliterkOSMalloc (int) ;
 int sqliterkPageAcquire (int *,int,int *) ;
 int sqliterkPageClearData (int ) ;
 int sqliterkPageGetType (int ) ;
 int sqliterkPagerGetUsableSize (int *) ;
 int sqliterk_btree_type_index ;
 int sqliterk_btree_type_master ;
 int sqliterk_btree_type_table ;





int sqliterkBtreeOpen(sqliterk *rk,
                      sqliterk_pager *pager,
                      int rootPageno,
                      sqliterk_btree **btree)
{
    if (!pager || !btree) {
        return SQLITERK_MISUSE;
    }
    int rc = SQLITERK_OK;
    sqliterk_btree *theBtree = sqliterkOSMalloc(sizeof(sqliterk_btree));
    if (!theBtree) {
        rc = SQLITERK_NOMEM;
        goto sqliterkBtreeOpen_Failed;
    }
    theBtree->pager = pager;

    rc = sqliterkPageAcquire(theBtree->pager, rootPageno, &theBtree->rootpage);
    if (rc != SQLITERK_OK) {
        goto sqliterkBtreeOpen_Failed;
    }
    if (rootPageno == 1) {
        rc = sqliterkBtreeSetMeta(theBtree, "sqlite_master",
                                  sqliterk_btree_type_master);
        if (rc != SQLITERK_OK) {
            goto sqliterkBtreeOpen_Failed;
        }
    } else {
        switch (sqliterkPageGetType(theBtree->rootpage)) {
            case 131:
            case 129:
                theBtree->type = sqliterk_btree_type_index;
                break;
            case 130:
            case 128:
                theBtree->type = sqliterk_btree_type_table;
                break;
            default:
                rc = SQLITERK_DAMAGED;
                goto sqliterkBtreeOpen_Failed;
        }
    }

    sqliterkPageClearData(theBtree->rootpage);

    theBtree->maxLocal =
        (sqliterkPagerGetUsableSize(theBtree->pager) - 12) * 64 / 255 - 23;
    theBtree->minLocal =
        (sqliterkPagerGetUsableSize(theBtree->pager) - 12) * 32 / 255 - 23;
    theBtree->maxLeaf = sqliterkPagerGetUsableSize(theBtree->pager) - 35;
    theBtree->minLeaf =
        (sqliterkPagerGetUsableSize(theBtree->pager) - 12) * 32 / 255 - 23;

    theBtree->rk = rk;

    *btree = theBtree;
    return SQLITERK_OK;

sqliterkBtreeOpen_Failed:
    if (theBtree) {
        sqliterkBtreeClose(theBtree);
    }
    *btree = ((void*)0);
    return rc;
}
