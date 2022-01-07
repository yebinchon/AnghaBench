
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pager; } ;
typedef TYPE_1__ sqliterk ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int sqliterkOSFree (TYPE_1__*) ;
 int sqliterkPagerClose (int *) ;

int sqliterkClose(sqliterk *rk)
{
    if (!rk) {
        return SQLITERK_MISUSE;
    }
    if (rk->pager) {
        sqliterkPagerClose(rk->pager);
        rk->pager = ((void*)0);
    }
    sqliterkOSFree(rk);
    return SQLITERK_OK;
}
