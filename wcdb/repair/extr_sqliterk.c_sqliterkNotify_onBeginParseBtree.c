
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqliterk_table ;
typedef int sqliterk_page ;
typedef int sqliterk_btree ;
struct TYPE_5__ {int (* onBeginParseTable ) (TYPE_2__*,int *) ;} ;
struct TYPE_6__ {TYPE_1__ notify; } ;
typedef TYPE_2__ sqliterk ;


 int SQLITERK_OK ;
 int sqliterkBtreeGetName (int *) ;
 int * sqliterkBtreeGetRootPage (int *) ;
 int sqliterkBtreeGetType (int *) ;
 int sqliterkBtreeGetTypeName (int ) ;
 int sqliterkOSDebug (int ,char*,int ,int ,int ) ;
 int sqliterkPageGetPageno (int *) ;
 int stub1 (TYPE_2__*,int *) ;

__attribute__((used)) static void sqliterkNotify_onBeginParseBtree(sqliterk *rk,
                                             sqliterk_btree *btree)
{
    if (rk->notify.onBeginParseTable) {
        rk->notify.onBeginParseTable(rk, (sqliterk_table *) btree);
    }
    sqliterk_page *rootpage = sqliterkBtreeGetRootPage(btree);
    sqliterkOSDebug(
        SQLITERK_OK, "Parsing B-tree -> [root: %d, name: %s, type: %s]",
        sqliterkPageGetPageno(rootpage), sqliterkBtreeGetName(btree),
        sqliterkBtreeGetTypeName(sqliterkBtreeGetType(btree)));
}
