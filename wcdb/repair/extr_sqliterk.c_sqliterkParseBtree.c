
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqliterk_page ;
typedef int sqliterk_btree ;
struct TYPE_3__ {int listen; int pager; } ;
typedef TYPE_1__ sqliterk ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int * sqliterkBtreeGetRootPage (int *) ;
 int sqliterkBtreeParse (int *) ;
 int sqliterkBtreeSetNotify (int *,int *) ;
 int sqliterkPageGetPageno (int *) ;
 int sqliterkPagerIsPagenoValid (int ,int) ;

__attribute__((used)) static int sqliterkParseBtree(sqliterk *rk, sqliterk_btree *btree)
{
    if (!rk) {
        return SQLITERK_MISUSE;
    }
    sqliterk_page *page = sqliterkBtreeGetRootPage(btree);
    int pageno = sqliterkPageGetPageno(page);
    if (!page || sqliterkPagerIsPagenoValid(rk->pager, pageno) != SQLITERK_OK) {
        return SQLITERK_MISUSE;
    }
    int rc = SQLITERK_OK;
    sqliterkBtreeSetNotify(btree, &rk->listen);
    rc = sqliterkBtreeParse(btree);
    return rc;
}
