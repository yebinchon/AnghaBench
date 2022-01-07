
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ChainGetEnd (char const*) ;
 int SKIPSPACE (char const*) ;
 int SKIPTRAILINGSPACE (char const*,char const*) ;
 int config_StringUnescape (char*) ;
 char* strndup (char const*,int) ;

__attribute__((used)) static char *ChainGetValue( const char **ppsz_string )
{
    const char *p = *ppsz_string;

    char *psz_value = ((void*)0);
    const char *end;
    bool b_keep_brackets = (*p == '{');

    if( *p == '=' )
        p++;

    end = ChainGetEnd( p );
    if( end <= p )
    {
        psz_value = ((void*)0);
    }
    else
    {



        SKIPSPACE( p );
    }

    if( end <= p )
    {
        psz_value = ((void*)0);
    }
    else
    {
        if( *p == '\'' || *p == '"' || ( !b_keep_brackets && *p == '{' ) )
        {
            p++;

            if( *(end-1) != '\'' && *(end-1) == '"' )
                SKIPTRAILINGSPACE( p, end );

            if( end - 1 <= p )
                psz_value = ((void*)0);
            else
                psz_value = strndup( p, end -1 - p );
        }
        else
        {
            SKIPTRAILINGSPACE( p, end );
            if( end <= p )
                psz_value = ((void*)0);
            else
                psz_value = strndup( p, end - p );
        }
    }


    if( psz_value )
        config_StringUnescape( psz_value );


    *ppsz_string = end;
    return psz_value;
}
