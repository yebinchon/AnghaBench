
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_t ;
typedef int config_chain_t ;


 char* config_ChainCreate (char**,int **,char*) ;
 int config_ChainDestroy (int *) ;
 int * demux_FilterNew (int *,char*) ;
 int free (char*) ;
 char* strdup (char const*) ;

demux_t *demux_FilterChainNew( demux_t *p_demux, const char *psz_chain )
{
    if( !psz_chain || !*psz_chain )
        return ((void*)0);

    char *psz_parser = strdup(psz_chain);
    if(!psz_parser)
        return ((void*)0);


    while(psz_parser)
    {
        config_chain_t *p_cfg;
        char *psz_name;
        char *psz_rest_chain = config_ChainCreate( &psz_name, &p_cfg, psz_parser );
        free( psz_parser );
        psz_parser = psz_rest_chain;

        demux_t *filter = demux_FilterNew(p_demux, psz_name);
        if (filter != ((void*)0))
            p_demux = filter;

        free(psz_name);
        config_ChainDestroy(p_cfg);
    }

    return p_demux;
}
