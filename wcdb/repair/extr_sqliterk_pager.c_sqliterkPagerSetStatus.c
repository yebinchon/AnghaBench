
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sqliterk_status ;
struct TYPE_4__ {int integrity; scalar_t__* pagesStatus; } ;
typedef TYPE_1__ sqliterk_pager ;


 int SQLITERK_INTEGRITY_DATA ;
 scalar_t__ SQLITERK_OK ;
 scalar_t__ sqliterkPagerIsPagenoValid (TYPE_1__*,int) ;
 scalar_t__ sqliterk_status_checked ;

void sqliterkPagerSetStatus(sqliterk_pager *pager,
                            int pageno,
                            sqliterk_status status)
{
    if (!pager || !pager->pagesStatus ||
        sqliterkPagerIsPagenoValid(pager, pageno) != SQLITERK_OK) {
        return;
    }

    pager->pagesStatus[pageno - 1] = status;
    if (status == sqliterk_status_checked)
        pager->integrity |= SQLITERK_INTEGRITY_DATA;
}
