
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rofi_int_matcher ;
struct TYPE_2__ {int tokenize; } ;


 TYPE_1__ config ;
 int * create_regex (char const*,int) ;
 int g_free (char*) ;
 int ** g_malloc0 (int) ;
 int ** g_realloc (int **,int) ;
 char* g_strdup (char const*) ;
 size_t strlen (char const*) ;
 char* strtok_r (char*,char const* const,char**) ;

rofi_int_matcher **helper_tokenize ( const char *input, int case_sensitive )
{
    if ( input == ((void*)0) ) {
        return ((void*)0);
    }
    size_t len = strlen ( input );
    if ( len == 0 ) {
        return ((void*)0);
    }

    char *saveptr = ((void*)0), *token;
    rofi_int_matcher **retv = ((void*)0);
    if ( !config.tokenize ) {
        retv = g_malloc0 ( sizeof ( rofi_int_matcher* ) * 2 );
        retv[0] = create_regex ( input, case_sensitive );
        return retv;
    }


    int num_tokens = 0;


    char *str = g_strdup ( input );



    const char * const sep = " ";
    for ( token = strtok_r ( str, sep, &saveptr ); token != ((void*)0); token = strtok_r ( ((void*)0), sep, &saveptr ) ) {
        retv = g_realloc ( retv, sizeof ( rofi_int_matcher* ) * ( num_tokens + 2 ) );
        retv[num_tokens] = create_regex ( token, case_sensitive );
        retv[num_tokens + 1] = ((void*)0);
        num_tokens++;
    }

    g_free ( str );
    return retv;
}
