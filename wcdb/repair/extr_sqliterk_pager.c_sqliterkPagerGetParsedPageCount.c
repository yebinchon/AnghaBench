
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* pagesStatus; int pagecount; } ;
typedef TYPE_1__ sqliterk_pager ;


 scalar_t__ sqliterk_status_checked ;

int sqliterkPagerGetParsedPageCount(sqliterk_pager *pager)
{
    if (!pager || !pager->pagesStatus) {
        return 0;
    }

    int i, count = 0;
    for (i = 0; i < pager->pagecount; i++) {
        if (pager->pagesStatus[i] == sqliterk_status_checked) {
            count++;
        }
    }
    return count;
}
