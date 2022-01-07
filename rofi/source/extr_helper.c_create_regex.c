
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int invert; int * regex; } ;
typedef TYPE_1__ rofi_int_matcher ;
typedef char const gchar ;
struct TYPE_6__ {char const matching_negate_char; int matching_method; } ;
typedef int GRegex ;





 int * R (char const*,int) ;
 TYPE_4__ config ;
 char* fuzzy_to_regex (char const*) ;
 int g_free (char const*) ;
 TYPE_1__* g_malloc0 (int) ;
 char* g_regex_escape_string (char const*,int) ;
 char* glob_to_regex (char const*) ;

__attribute__((used)) static rofi_int_matcher * create_regex ( const char *input, int case_sensitive )
{
    GRegex * retv = ((void*)0);
    gchar *r;
    rofi_int_matcher *rv = g_malloc0 ( sizeof ( rofi_int_matcher ) );
    if ( input && input[0] == config.matching_negate_char ) {
        rv->invert = 1;
        input++;
    }
    switch ( config.matching_method )
    {
    case 129:
        r = glob_to_regex ( input );
        retv = R ( r, case_sensitive );
        g_free ( r );
        break;
    case 128:
        retv = R ( input, case_sensitive );
        if ( retv == ((void*)0) ) {
            r = g_regex_escape_string ( input, -1 );
            retv = R ( r, case_sensitive );
            g_free ( r );
        }
        break;
    case 130:
        r = fuzzy_to_regex ( input );
        retv = R ( r, case_sensitive );
        g_free ( r );
        break;
    default:
        r = g_regex_escape_string ( input, -1 );
        retv = R ( r, case_sensitive );
        g_free ( r );
        break;
    }
    rv->regex = retv;
    return rv;
}
