
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqliterk_status ;
struct TYPE_4__ {int * pagesStatus; } ;
typedef TYPE_1__ sqliterk_pager ;


 scalar_t__ SQLITERK_OK ;
 scalar_t__ sqliterkPagerIsPagenoValid (TYPE_1__*,int) ;
 int sqliterk_status_invalid ;

sqliterk_status sqliterkPagerGetStatus(sqliterk_pager *pager, int pageno)
{
    if (!pager || !pager->pagesStatus ||
        sqliterkPagerIsPagenoValid(pager, pageno) != SQLITERK_OK) {
        return sqliterk_status_invalid;
    }
    return pager->pagesStatus[pageno - 1];
}
