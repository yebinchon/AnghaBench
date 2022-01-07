
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cairo_surface_t ;
struct TYPE_4__ {int * (* _get_icon ) (TYPE_1__ const*,unsigned int,int) ;} ;
typedef TYPE_1__ Mode ;


 int g_assert (int ) ;
 int * stub1 (TYPE_1__ const*,unsigned int,int) ;

cairo_surface_t * mode_get_icon ( const Mode *mode, unsigned int selected_line, int height )
{
    g_assert ( mode != ((void*)0) );

    if ( mode->_get_icon != ((void*)0) ) {
        return mode->_get_icon ( mode, selected_line, height );
    }
    else {
        return ((void*)0);
    }
}
