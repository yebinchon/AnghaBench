#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int invert; int /*<<< orphan*/ * regex; } ;
typedef  TYPE_1__ rofi_int_matcher ;
typedef  char const gchar ;
struct TYPE_6__ {char const matching_negate_char; int matching_method; } ;
typedef  int /*<<< orphan*/  GRegex ;

/* Variables and functions */
#define  MM_FUZZY 130 
#define  MM_GLOB 129 
#define  MM_REGEX 128 
 int /*<<< orphan*/ * FUNC0 (char const*,int) ; 
 TYPE_4__ config ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 TYPE_1__* FUNC3 (int) ; 
 char* FUNC4 (char const*,int) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static rofi_int_matcher * FUNC6 ( const char *input, int case_sensitive )
{
    GRegex           * retv = NULL;
    gchar            *r;
    rofi_int_matcher *rv = FUNC3 ( sizeof ( rofi_int_matcher ) );
    if ( input && input[0] == config.matching_negate_char ) {
        rv->invert = 1;
        input++;
    }
    switch ( config.matching_method )
    {
    case MM_GLOB:
        r    = FUNC5 ( input );
        retv = FUNC0 ( r, case_sensitive );
        FUNC2 ( r );
        break;
    case MM_REGEX:
        retv = FUNC0 ( input, case_sensitive );
        if ( retv == NULL ) {
            r    = FUNC4 ( input, -1 );
            retv = FUNC0 ( r, case_sensitive );
            FUNC2 ( r );
        }
        break;
    case MM_FUZZY:
        r    = FUNC1 ( input );
        retv = FUNC0 ( r, case_sensitive );
        FUNC2 ( r );
        break;
    default:
        r    = FUNC4 ( input, -1 );
        retv = FUNC0 ( r, case_sensitive );
        FUNC2 ( r );
        break;
    }
    rv->regex = retv;
    return rv;
}