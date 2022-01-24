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
typedef  int /*<<< orphan*/  config_chain_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ **,char const*) ; 
 size_t FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char const*,size_t) ; 

char *FUNC5( char **ppsz_name, config_chain_t **pp_cfg,
                          const char *psz_chain )
{
    size_t len;

    *ppsz_name = NULL;
    *pp_cfg    = NULL;

    if( !psz_chain )
        return NULL;
    FUNC0( psz_chain );

    /* Look for parameter (a {...} or :...) or end of name (space or nul) */
    len = FUNC2( psz_chain, "{: \t" );
    *ppsz_name = FUNC4( psz_chain, len );
    psz_chain += len;

    /* Parse the parameters */
    FUNC0( psz_chain );
    if( *psz_chain == '{' )
        psz_chain = FUNC1( pp_cfg, psz_chain );

    if( *psz_chain == ':' )
        return FUNC3( psz_chain + 1 );

    return NULL;
}