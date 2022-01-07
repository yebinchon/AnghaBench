
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* _result ) (TYPE_1__*,int,char**,unsigned int) ;} ;
typedef int ModeMode ;
typedef TYPE_1__ Mode ;


 int g_assert (int ) ;
 int stub1 (TYPE_1__*,int,char**,unsigned int) ;

ModeMode mode_result ( Mode *mode, int menu_retv, char **input, unsigned int selected_line )
{
    g_assert ( mode != ((void*)0) );
    g_assert ( mode->_result != ((void*)0) );
    g_assert ( input != ((void*)0) );
    return mode->_result ( mode, menu_retv, input, selected_line );
}
