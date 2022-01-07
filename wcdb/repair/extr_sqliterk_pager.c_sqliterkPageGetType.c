
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqliterk_page_type ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ sqliterk_page ;


 int sqliterk_page_type_unknown ;

sqliterk_page_type sqliterkPageGetType(sqliterk_page *page)
{
    if (!page) {
        return sqliterk_page_type_unknown;
    }
    return page->type;
}
