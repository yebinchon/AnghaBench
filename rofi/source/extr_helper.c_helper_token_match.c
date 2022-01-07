
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int invert; int regex; } ;
typedef TYPE_1__ rofi_int_matcher ;


 int TRUE ;
 int g_regex_match (int ,char const*,int ,int *) ;

int helper_token_match ( rofi_int_matcher* const *tokens, const char *input )
{
    int match = TRUE;

    if ( tokens ) {
        for ( int j = 0; match && tokens[j]; j++ ) {
            match = g_regex_match ( tokens[j]->regex, input, 0, ((void*)0) );
            match ^= tokens[j]->invert;
        }
    }
    return match;
}
