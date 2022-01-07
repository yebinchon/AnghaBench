
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * psz_value; struct TYPE_4__* p_next; int psz_name; } ;
typedef TYPE_1__ config_chain_t ;


 int * ChainGetValue (char const**) ;
 int SKIPSPACE (char const*) ;
 TYPE_1__* malloc (int) ;
 int memchr (char*,char const,int) ;
 scalar_t__ strchr (char*,char const) ;
 size_t strcspn (char const*,char*) ;
 int strndup (char const*,size_t) ;

const char *config_ChainParseOptions( config_chain_t **pp_cfg, const char *psz_opts )
{
    config_chain_t **pp_next = pp_cfg;
    bool first = 1;
    do
    {
        if (!first)
            psz_opts++;
        SKIPSPACE( psz_opts );

        first = 0;


        size_t len = strcspn( psz_opts, "=,{} \t" );
        if( len == 0 )
            continue;


        config_chain_t *p_cfg = malloc( sizeof(*p_cfg) );
        if( !p_cfg )
            break;
        p_cfg->psz_name = strndup( psz_opts, len );
        psz_opts += len;
        p_cfg->psz_value = ((void*)0);
        p_cfg->p_next = ((void*)0);

        *pp_next = p_cfg;
        pp_next = &p_cfg->p_next;


        SKIPSPACE( psz_opts );
        if( strchr( "={", *psz_opts ) )
        {
            p_cfg->psz_value = ChainGetValue( &psz_opts );
            SKIPSPACE( psz_opts );
        }
    }
    while( !memchr( "}", *psz_opts, 2 ) );

    if( *psz_opts ) psz_opts++; ;
    SKIPSPACE( psz_opts );

    return psz_opts;
}
