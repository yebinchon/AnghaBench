
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pagecount; } ;
typedef TYPE_1__ sqliterk_pager ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;

int sqliterkPagerIsPagenoValid(sqliterk_pager *pager, int pageno)
{
    if (!pager || pageno < 1 || pageno > pager->pagecount) {
        return SQLITERK_MISUSE;
    }
    return SQLITERK_OK;
}
