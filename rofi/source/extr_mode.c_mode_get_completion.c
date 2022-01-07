
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* (* _get_completion ) (TYPE_1__ const*,unsigned int) ;char* (* _get_display_value ) (TYPE_1__ const*,unsigned int,int*,int *,int ) ;} ;
typedef TYPE_1__ Mode ;


 int TRUE ;
 int g_assert (int ) ;
 char* stub1 (TYPE_1__ const*,unsigned int) ;
 char* stub2 (TYPE_1__ const*,unsigned int,int*,int *,int ) ;

char * mode_get_completion ( const Mode *mode, unsigned int selected_line )
{
    g_assert ( mode != ((void*)0) );
    if ( mode->_get_completion != ((void*)0) ) {
        return mode->_get_completion ( mode, selected_line );
    }
    else {
        int state;
        g_assert ( mode->_get_display_value != ((void*)0) );
        return mode->_get_display_value ( mode, selected_line, &state, ((void*)0), TRUE );
    }
}
