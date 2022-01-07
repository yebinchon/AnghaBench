
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqliterk_btree ;
struct TYPE_5__ {int (* didParsePage ) (TYPE_2__*,int) ;} ;
struct TYPE_6__ {TYPE_1__ notify; int pager; } ;
typedef TYPE_2__ sqliterk ;




 int SQLITERK_MISUSE ;

 int sqliterkOSDebug (int const,char*,int) ;
 int sqliterkOSWarning (int ,char*,int) ;
 int sqliterkPagerSetStatus (int ,int,int ) ;
 int sqliterk_status_checked ;
 int sqliterk_status_damaged ;
 int sqliterk_status_invalid ;
 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static void sqliterkNotify_onEndParsePage(sqliterk *rk,
                                          sqliterk_btree *btree,
                                          int pageno,
                                          int result)
{
    if (!rk) {
        return;
    }
    switch (result) {
        case 128:
            sqliterkPagerSetStatus(rk->pager, pageno, sqliterk_status_checked);
            break;
        case 129:
            sqliterkPagerSetStatus(rk->pager, pageno, sqliterk_status_damaged);
            break;
        case 130:
            sqliterkOSDebug(130, "Cancelled parsing page %d.",
                            pageno);
            break;
        default:
            sqliterkOSWarning(SQLITERK_MISUSE,
                              "Cannot parse page %d. Invalid type.", pageno);
            sqliterkPagerSetStatus(rk->pager, pageno, sqliterk_status_invalid);
            break;
    }

    if (rk->notify.didParsePage) {
        rk->notify.didParsePage(rk, pageno);
    }
}
