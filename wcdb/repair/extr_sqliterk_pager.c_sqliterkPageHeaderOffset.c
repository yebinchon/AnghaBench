
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pageno; } ;
typedef TYPE_1__ sqliterk_page ;


 int sqliterkPagenoHeaderOffset (int ) ;

int sqliterkPageHeaderOffset(sqliterk_page *page)
{
    if (!page) {
        return 0;
    }
    return sqliterkPagenoHeaderOffset(page->pageno);
}
