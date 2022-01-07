
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int refs; } ;


 int InterlockedIncrement (int *) ;

struct table *addref_table( struct table *table )
{
    InterlockedIncrement( &table->refs );
    return table;
}
