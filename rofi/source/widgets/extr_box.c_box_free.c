
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int widget ;
struct TYPE_7__ {int children; } ;
typedef TYPE_1__ box ;
struct TYPE_8__ {scalar_t__ data; } ;
typedef TYPE_2__ GList ;


 int g_free (TYPE_1__*) ;
 TYPE_2__* g_list_first (int ) ;
 int g_list_free (int ) ;
 TYPE_2__* g_list_next (TYPE_2__*) ;
 int widget_free (int *) ;

__attribute__((used)) static void box_free ( widget *wid )
{
    box *b = (box *) wid;

    for ( GList *iter = g_list_first ( b->children ); iter != ((void*)0); iter = g_list_next ( iter ) ) {
        widget * child = (widget *) iter->data;
        widget_free ( child );
    }
    g_list_free ( b->children );
    g_free ( b );
}
