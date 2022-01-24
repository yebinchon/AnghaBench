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
typedef  int /*<<< orphan*/  stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char*,char*,char**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*) ; 

stream_t *FUNC6( stream_t *p_source, const char *psz_chain )
{
    /* Add user stream filter */
    char *chain = FUNC2( psz_chain );
    if( FUNC4(chain == NULL) )
        return p_source;

    char *buf;
    for( const char *name = FUNC3( chain, ":", &buf );
         name != NULL;
         name = FUNC3( NULL, ":", &buf ) )
    {
        stream_t *p_filter = FUNC5( p_source, name );
        if( p_filter != NULL )
            p_source = p_filter;
        else
            FUNC1( p_source, "cannot insert stream filter %s", name );
    }
    FUNC0( chain );

    return p_source;
}