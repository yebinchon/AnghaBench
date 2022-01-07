
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* (* _preprocess_input ) (TYPE_1__*,char const*) ;} ;
typedef TYPE_1__ Mode ;


 char* g_strdup (char const*) ;
 char* stub1 (TYPE_1__*,char const*) ;

char * mode_preprocess_input ( Mode *mode, const char *input )
{
    if ( mode->_preprocess_input ) {
        return mode->_preprocess_input ( mode, input );
    }
    return g_strdup ( input );
}
