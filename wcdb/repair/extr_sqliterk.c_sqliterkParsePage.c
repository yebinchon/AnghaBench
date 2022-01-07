
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqliterk_btree ;
struct TYPE_5__ {int pager; } ;
typedef TYPE_1__ sqliterk ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int sqliterkBtreeClose (int *) ;
 int sqliterkBtreeOpen (TYPE_1__*,int ,int,int **) ;
 scalar_t__ sqliterkPagerGetStatus (int ,int) ;
 int sqliterkParseBtree (TYPE_1__*,int *) ;
 scalar_t__ sqliterk_status_unchecked ;

int sqliterkParsePage(sqliterk *rk, int pageno)
{
    if (!rk) {
        return SQLITERK_MISUSE;
    }
    if (sqliterkPagerGetStatus(rk->pager, pageno) !=
        sqliterk_status_unchecked) {
        return SQLITERK_OK;
    }
    int rc = SQLITERK_OK;
    sqliterk_btree *btree = ((void*)0);
    rc = sqliterkBtreeOpen(rk, rk->pager, pageno, &btree);
    if (rc != SQLITERK_OK) {
        goto sqliterkParsePage_End;
    }
    rc = sqliterkParseBtree(rk, btree);
sqliterkParsePage_End:
    if (btree) {
        sqliterkBtreeClose(btree);
    }
    return rc;
}
