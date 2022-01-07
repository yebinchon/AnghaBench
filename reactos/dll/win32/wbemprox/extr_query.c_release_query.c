
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query {int refs; } ;


 int InterlockedDecrement (int *) ;
 int free_query (struct query*) ;

void release_query( struct query *query )
{
    if (!InterlockedDecrement( &query->refs )) free_query( query );
}
