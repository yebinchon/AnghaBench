
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqliterk_btree ;
struct TYPE_3__ {int pager; } ;
typedef TYPE_1__ sqliterk ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 scalar_t__ sqliterkPagerGetStatus (int ,int) ;
 int sqliterkPagerSetStatus (int ,int,scalar_t__) ;
 scalar_t__ sqliterk_status_checking ;

__attribute__((used)) static int
sqliterkNotify_onBeginParsePage(sqliterk *rk, sqliterk_btree *btree, int pageno)
{

    if (sqliterkPagerGetStatus(rk->pager, pageno) == sqliterk_status_checking) {
        return SQLITERK_MISUSE;
    }
    sqliterkPagerSetStatus(rk->pager, pageno, sqliterk_status_checking);
    return SQLITERK_OK;
}
