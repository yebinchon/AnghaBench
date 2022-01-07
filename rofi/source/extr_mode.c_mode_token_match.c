
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int rofi_int_matcher ;
struct TYPE_4__ {int (* _token_match ) (TYPE_1__ const*,int **,unsigned int) ;} ;
typedef TYPE_1__ Mode ;


 int g_assert (int ) ;
 int stub1 (TYPE_1__ const*,int **,unsigned int) ;

int mode_token_match ( const Mode *mode, rofi_int_matcher **tokens, unsigned int selected_line )
{
    g_assert ( mode != ((void*)0) );
    g_assert ( mode->_token_match != ((void*)0) );
    return mode->_token_match ( mode, tokens, selected_line );
}
