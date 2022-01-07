
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {struct path* filter; struct path* class; } ;


 int heap_free (struct path*) ;

__attribute__((used)) static void free_path( struct path *path )
{
    heap_free( path->class );
    heap_free( path->filter );
    heap_free( path );
}
