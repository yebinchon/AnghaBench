
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_chain_t ;


 int SKIPSPACE (char const*) ;
 char* config_ChainParseOptions (int **,char const*) ;
 size_t strcspn (char const*,char*) ;
 char* strdup (char const*) ;
 char* strndup (char const*,size_t) ;

char *config_ChainCreate( char **ppsz_name, config_chain_t **pp_cfg,
                          const char *psz_chain )
{
    size_t len;

    *ppsz_name = ((void*)0);
    *pp_cfg = ((void*)0);

    if( !psz_chain )
        return ((void*)0);
    SKIPSPACE( psz_chain );


    len = strcspn( psz_chain, "{: \t" );
    *ppsz_name = strndup( psz_chain, len );
    psz_chain += len;


    SKIPSPACE( psz_chain );
    if( *psz_chain == '{' )
        psz_chain = config_ChainParseOptions( pp_cfg, psz_chain );

    if( *psz_chain == ':' )
        return strdup( psz_chain + 1 );

    return ((void*)0);
}
