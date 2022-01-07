
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqliterk_table ;
typedef int sqliterk_btree ;
struct TYPE_5__ {int (* onEndParseTable ) (TYPE_2__*,int *) ;} ;
struct TYPE_6__ {TYPE_1__ notify; } ;
typedef TYPE_2__ sqliterk ;


 int stub1 (TYPE_2__*,int *) ;

__attribute__((used)) static void
sqliterkNotify_onEndParseBtree(sqliterk *rk, sqliterk_btree *btree, int result)
{
    if (rk->notify.onEndParseTable) {
        rk->notify.onEndParseTable(rk, (sqliterk_table *) btree);
    }
}
