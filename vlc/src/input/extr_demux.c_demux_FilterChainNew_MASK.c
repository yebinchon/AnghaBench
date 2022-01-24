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
typedef  int /*<<< orphan*/  demux_t ;
typedef  int /*<<< orphan*/  config_chain_t ;

/* Variables and functions */
 char* FUNC0 (char**,int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*) ; 

demux_t *FUNC5( demux_t *p_demux, const char *psz_chain )
{
    if( !psz_chain || !*psz_chain )
        return NULL;

    char *psz_parser = FUNC4(psz_chain);
    if(!psz_parser)
        return NULL;

    /* parse chain */
    while(psz_parser)
    {
        config_chain_t *p_cfg;
        char *psz_name;
        char *psz_rest_chain = FUNC0( &psz_name, &p_cfg, psz_parser );
        FUNC3( psz_parser );
        psz_parser = psz_rest_chain;

        demux_t *filter = FUNC2(p_demux, psz_name);
        if (filter != NULL)
            p_demux = filter;

        FUNC3(psz_name);
        FUNC1(p_cfg);
    }

    return p_demux;
}