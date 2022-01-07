
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query {scalar_t__ magic; } ;


 int heap_free (struct query*) ;

__attribute__((used)) static void destroy_query( struct query *query )
{
    query->magic = 0;
    heap_free( query );
}
