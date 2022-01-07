
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqliterk_btree_notify ;
struct TYPE_3__ {int notify; } ;
typedef TYPE_1__ sqliterk_btree ;



void sqliterkBtreeSetNotify(sqliterk_btree *btree,
                            sqliterk_btree_notify *notify)
{
    if (!btree || !notify) {
        return;
    }
    btree->notify = *notify;
}
