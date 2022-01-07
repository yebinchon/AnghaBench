
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query {int refs; } ;


 int InterlockedIncrement (int *) ;

struct query *addref_query( struct query *query )
{
    InterlockedIncrement( &query->refs );
    return query;
}
