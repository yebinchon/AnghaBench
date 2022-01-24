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
typedef  int /*<<< orphan*/  vlc_array_t ;
typedef  char sout_stream_t ;
typedef  int /*<<< orphan*/  sout_instance_t ;
typedef  char config_chain_t ;

/* Variables and functions */
 char* FUNC0 (char**,char**,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *,size_t) ; 

sout_stream_t *FUNC11(sout_instance_t *p_sout, const char *psz_chain,
                                sout_stream_t *p_next, sout_stream_t **pp_last)
{
    if(!psz_chain || !*psz_chain)
    {
        if(pp_last) *pp_last = NULL;
        return p_next;
    }

    char *psz_parser = FUNC5(psz_chain);
    if(!psz_parser)
        return NULL;

    vlc_array_t cfg, name;
    FUNC9(&cfg);
    FUNC9(&name);

    /* parse chain */
    while(psz_parser)
    {
        config_chain_t *p_cfg;
        char *psz_name;
        char *psz_rest_chain = FUNC0( &psz_name, &p_cfg, psz_parser );
        FUNC2( psz_parser );
        psz_parser = psz_rest_chain;

        FUNC6(&cfg, p_cfg);
        FUNC6(&name, psz_name);
    }

    size_t i = FUNC8(&name);
    vlc_array_t module;
    FUNC9(&module);
    while(i--)
    {
        p_next = FUNC4( p_sout, FUNC10(&name, i),
            FUNC10(&cfg, i), p_next);

        if(!p_next)
            goto error;

        if(i == FUNC8(&name) - 1 && pp_last)
            *pp_last = p_next;   /* last module created in the chain */

        FUNC6(&module, p_next);
    }

    FUNC7(&name);
    FUNC7(&cfg);
    FUNC7(&module);

    return p_next;

error:

    i++;    /* last module couldn't be created */

    /* destroy all modules created, starting with the last one */
    int modules = FUNC8(&module);
    while(modules--)
        FUNC3(FUNC10(&module, modules));
    FUNC7(&module);

    /* then destroy all names and config which weren't destroyed by
     * sout_StreamDelete */
    while(i--)
    {
        FUNC2(FUNC10(&name, i));
        FUNC1(FUNC10(&cfg, i));
    }
    FUNC7(&name);
    FUNC7(&cfg);

    return NULL;
}