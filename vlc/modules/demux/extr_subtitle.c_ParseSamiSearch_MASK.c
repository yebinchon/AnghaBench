#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  text_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char const*,char const*) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static const char *FUNC3( text_t *txt,
                                    const char *psz_start, const char *psz_str )
{
    if( psz_start && FUNC1( psz_start, psz_str ) )
    {
        const char *s = FUNC1( psz_start, psz_str );
        return &s[FUNC2( psz_str )];
    }

    for( ;; )
    {
        const char *p = FUNC0( txt );
        if( !p )
            return NULL;

        const char *s = FUNC1( p, psz_str );
        if( s != NULL )
            return &s[FUNC2( psz_str )];
    }
}