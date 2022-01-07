
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 char* config_GetPsz (char*) ;
 int free (char*) ;
 char* strchr (char*,char) ;
 size_t strlen (char const*) ;
 int strncmp (char*,char const*,size_t) ;

bool config_ExistIntf( const char *psz_intf )
{
    assert( psz_intf );

    char *psz_config, *psz_parser;
    size_t i_len = strlen( psz_intf );

    psz_config = psz_parser = config_GetPsz( "extraintf" );
    while( psz_parser )
    {
        if( !strncmp( psz_parser, psz_intf, i_len ) )
        {
            free( psz_config );
            return 1;
        }
        psz_parser = strchr( psz_parser, ':' );
        if( psz_parser ) psz_parser++;
    }
    free( psz_config );

    psz_config = psz_parser = config_GetPsz( "control" );
    while( psz_parser )
    {
        if( !strncmp( psz_parser, psz_intf, i_len ) )
        {
            free( psz_config );
            return 1;
        }
        psz_parser = strchr( psz_parser, ':' );
        if( psz_parser ) psz_parser++;
    }
    free( psz_config );

    return 0;
}
