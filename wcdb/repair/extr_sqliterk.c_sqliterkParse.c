
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pager; } ;
typedef TYPE_1__ sqliterk ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int sqliterkPagerGetPageCount (int ) ;
 int sqliterkParsePage (TYPE_1__*,int) ;

int sqliterkParse(sqliterk *rk)
{
    if (!rk) {
        return SQLITERK_MISUSE;
    }

    int i;
    for (i = 0; i < sqliterkPagerGetPageCount(rk->pager); i++) {
        int pageno = i + 1;
        sqliterkParsePage(rk, pageno);
    }
    return SQLITERK_OK;
}
