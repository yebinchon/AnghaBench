
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* (* _get_display_value ) (TYPE_1__ const*,unsigned int,int*,int **,int) ;} ;
typedef TYPE_1__ Mode ;
typedef int GList ;


 int g_assert (int ) ;
 char* stub1 (TYPE_1__ const*,unsigned int,int*,int **,int) ;

char * mode_get_display_value ( const Mode *mode, unsigned int selected_line, int *state, GList **attribute_list, int get_entry )
{
    g_assert ( mode != ((void*)0) );
    g_assert ( state != ((void*)0) );
    g_assert ( mode->_get_display_value != ((void*)0) );

    return mode->_get_display_value ( mode, selected_line, state, attribute_list, get_entry );
}
