
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {scalar_t__ num_cols; } ;
typedef scalar_t__ UINT ;


 scalar_t__ get_column_offset (struct table const*,scalar_t__) ;
 scalar_t__ get_column_size (struct table const*,scalar_t__) ;

__attribute__((used)) static UINT get_row_size( const struct table *table )
{
    return get_column_offset( table, table->num_cols - 1 ) + get_column_size( table, table->num_cols - 1 );
}
