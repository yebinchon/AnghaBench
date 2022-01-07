
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct table {TYPE_1__* columns; } ;
typedef size_t UINT ;
struct TYPE_2__ {int type; } ;
typedef int BOOL ;


 int COL_FLAG_METHOD ;

BOOL is_method( const struct table *table, UINT column )
{
    return table->columns[column].type & COL_FLAG_METHOD;
}
