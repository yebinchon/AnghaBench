
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* userInfo; } ;
typedef TYPE_1__ sqliterk_btree ;



void sqliterkBtreeSetUserInfo(sqliterk_btree *btree, void *userInfo)
{
    if (!btree) {
        return;
    }
    btree->userInfo = userInfo;
}
