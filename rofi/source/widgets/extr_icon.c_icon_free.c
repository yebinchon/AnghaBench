
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int widget ;
struct TYPE_3__ {scalar_t__ icon; } ;
typedef TYPE_1__ icon ;


 int cairo_surface_destroy (scalar_t__) ;
 int g_free (TYPE_1__*) ;

__attribute__((used)) static void icon_free ( widget *wid )
{
    icon *b = (icon *) wid;

    if ( b->icon ) {
        cairo_surface_destroy ( b->icon );
    }

    g_free ( b );
}
