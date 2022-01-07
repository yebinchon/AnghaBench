
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {struct counter* path; scalar_t__ magic; } ;


 int heap_free (struct counter*) ;

__attribute__((used)) static void destroy_counter( struct counter *counter )
{
    counter->magic = 0;
    heap_free( counter->path );
    heap_free( counter );
}
