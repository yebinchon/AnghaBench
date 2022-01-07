
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query {int refs; int mem; } ;


 struct query* heap_alloc (int) ;
 int list_init (int *) ;

struct query *create_query(void)
{
    struct query *query;

    if (!(query = heap_alloc( sizeof(*query) ))) return ((void*)0);
    list_init( &query->mem );
    query->refs = 1;
    return query;
}
