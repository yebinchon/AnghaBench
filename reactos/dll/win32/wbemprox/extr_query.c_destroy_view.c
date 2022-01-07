
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {struct view* result; scalar_t__ table; } ;


 int heap_free (struct view*) ;
 int release_table (scalar_t__) ;

void destroy_view( struct view *view )
{
    if (!view) return;
    if (view->table) release_table( view->table );
    heap_free( view->result );
    heap_free( view );
}
