
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_chain_t ;


 int check_config_equality (int *,int *) ;
 char* config_ChainCreate (char**,int **,scalar_t__) ;
 int config_ChainDestroy (int *) ;
 int * config_ChainDuplicate (int *) ;
 int free (char*) ;
 scalar_t__* ppsz_string ;

__attribute__((used)) static void test_config_ChainDuplicate()
{
    for( int i = 0; ppsz_string[i]; i++ )
    {
        char *psz_module;
        config_chain_t *p_cfg;
        char *psz_next = config_ChainCreate( &psz_module, &p_cfg, ppsz_string[i] );

        config_chain_t *p_cfg_copy = config_ChainDuplicate( p_cfg );
        check_config_equality(p_cfg, p_cfg_copy);

        config_ChainDestroy( p_cfg_copy );
        config_ChainDestroy( p_cfg );
        free( psz_next );
        free( psz_module );
    }
}
