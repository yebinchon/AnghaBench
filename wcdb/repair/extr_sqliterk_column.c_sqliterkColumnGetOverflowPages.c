
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqliterk_values ;
struct TYPE_3__ {int * overflowPages; } ;
typedef TYPE_1__ sqliterk_column ;



sqliterk_values *sqliterkColumnGetOverflowPages(sqliterk_column *column)
{
    if (!column) {
        return ((void*)0);
    }
    return column->overflowPages;
}
