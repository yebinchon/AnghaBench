#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rofi_int_matcher ;
struct TYPE_2__ {int /*<<< orphan*/  tokenize; } ;

/* Variables and functions */
 TYPE_1__ config ; 
 int /*<<< orphan*/ * FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ ** FUNC2 (int) ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ **,int) ; 
 char* FUNC4 (char const*) ; 
 size_t FUNC5 (char const*) ; 
 char* FUNC6 (char*,char const* const,char**) ; 

rofi_int_matcher **FUNC7 ( const char *input, int case_sensitive )
{
    if ( input == NULL ) {
        return NULL;
    }
    size_t len = FUNC5 ( input );
    if ( len == 0 ) {
        return NULL;
    }

    char             *saveptr = NULL, *token;
    rofi_int_matcher **retv = NULL;
    if ( !config.tokenize ) {
        retv    = FUNC2 ( sizeof ( rofi_int_matcher* ) * 2 );
        retv[0] = FUNC0 ( input, case_sensitive );
        return retv;
    }

    // First entry is always full (modified) stringtext.
    int num_tokens = 0;

    // Copy the string, 'strtok_r' modifies it.
    char *str = FUNC4 ( input );

    // Iterate over tokens.
    // strtok should still be valid for utf8.
    const char * const sep = " ";
    for ( token = FUNC6 ( str, sep, &saveptr ); token != NULL; token = FUNC6 ( NULL, sep, &saveptr ) ) {
        retv                 = FUNC3 ( retv, sizeof ( rofi_int_matcher* ) * ( num_tokens + 2 ) );
        retv[num_tokens]     = FUNC0 ( token, case_sensitive );
        retv[num_tokens + 1] = NULL;
        num_tokens++;
    }
    // Free str.
    FUNC1 ( str );
    return retv;
}