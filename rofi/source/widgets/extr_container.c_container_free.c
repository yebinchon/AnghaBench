
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int widget ;
struct TYPE_3__ {int child; } ;
typedef TYPE_1__ container ;


 int g_free (TYPE_1__*) ;
 int widget_free (int ) ;

__attribute__((used)) static void container_free ( widget *wid )
{
    container *b = (container *) wid;

    widget_free ( b->child );
    g_free ( b );
}
