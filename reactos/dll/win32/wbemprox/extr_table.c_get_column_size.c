
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct table {TYPE_1__* columns; } ;
typedef size_t UINT ;
struct TYPE_2__ {int type; } ;


 int COL_TYPE_MASK ;
 size_t get_type_size (int) ;

__attribute__((used)) static UINT get_column_size( const struct table *table, UINT column )
{
    return get_type_size( table->columns[column].type & COL_TYPE_MASK );
}
