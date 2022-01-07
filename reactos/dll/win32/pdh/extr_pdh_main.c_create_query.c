
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query {int counters; int magic; } ;


 int PDH_MAGIC_QUERY ;
 struct query* heap_alloc_zero (int) ;
 int list_init (int *) ;

__attribute__((used)) static struct query *create_query( void )
{
    struct query *query;

    if ((query = heap_alloc_zero( sizeof(struct query) )))
    {
        query->magic = PDH_MAGIC_QUERY;
        list_init( &query->counters );
        return query;
    }
    return ((void*)0);
}
