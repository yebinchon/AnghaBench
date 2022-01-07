
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pager; } ;
typedef TYPE_1__ sqliterk ;


 int sqliterkPagerGetParsedPageCount (int ) ;

int sqliterkGetParsedPageCount(sqliterk *rk)
{
    if (!rk) {
        return 0;
    }
    return sqliterkPagerGetParsedPageCount(rk->pager);
}
