
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ sqliterk_page ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int sqliterkOSFree (int *) ;

int sqliterkPageClearData(sqliterk_page *page)
{
    if (!page) {
        return SQLITERK_MISUSE;
    }
    if (page->data) {
        sqliterkOSFree(page->data);
        page->data = ((void*)0);
    }
    return SQLITERK_OK;
}
