
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int refs; } ;


 int InterlockedDecrement (int *) ;
 int free_table (struct table*) ;

void release_table( struct table *table )
{
    if (!InterlockedDecrement( &table->refs )) free_table( table );
}
