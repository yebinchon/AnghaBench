
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pagecount; scalar_t__ pagesize; struct TYPE_5__* pagesStatus; int * file; } ;
typedef TYPE_1__ sqliterk_pager ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int sqliterkCryptoFreeCodec (TYPE_1__*) ;
 int sqliterkOSClose (int *) ;
 int sqliterkOSFree (TYPE_1__*) ;

int sqliterkPagerClose(sqliterk_pager *pager)
{
    if (!pager) {
        return SQLITERK_MISUSE;
    }
    int rc = SQLITERK_OK;
    if (pager->file) {
        rc = sqliterkOSClose(pager->file);
        pager->file = ((void*)0);
    }
    if (pager->pagesStatus) {
        sqliterkOSFree(pager->pagesStatus);
        pager->pagesStatus = ((void*)0);
    }
    pager->pagesize = 0;
    pager->pagecount = 0;

    sqliterkCryptoFreeCodec(pager);

    sqliterkOSFree(pager);
    return rc;
}
