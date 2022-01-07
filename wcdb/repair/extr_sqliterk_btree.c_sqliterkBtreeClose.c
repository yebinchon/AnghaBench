
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int * rk; int * userInfo; int * pager; int * rootpage; struct TYPE_4__* name; } ;
typedef TYPE_1__ sqliterk_btree ;


 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int sqliterkOSFree (TYPE_1__*) ;
 int sqliterkPageRelease (int *) ;

int sqliterkBtreeClose(sqliterk_btree *btree)
{
    if (!btree) {
        return SQLITERK_MISUSE;
    }
    if (btree->name) {
        sqliterkOSFree(btree->name);
        btree->name = ((void*)0);
    }
    if (btree->rootpage) {
        sqliterkPageRelease(btree->rootpage);
        btree->rootpage = ((void*)0);
    }
    btree->pager = ((void*)0);
    btree->userInfo = ((void*)0);
    btree->rk = ((void*)0);
    btree->type = 0;
    sqliterkOSFree(btree);
    return SQLITERK_OK;
}
