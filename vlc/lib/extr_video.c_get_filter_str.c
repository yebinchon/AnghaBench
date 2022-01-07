
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int module_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int asprintf (char**,char*,char*,char const*) ;
 int free (char*) ;
 int memmove (char*,char*,int) ;
 int * module_find (char const*) ;
 scalar_t__ module_provides (int *,char*) ;
 int msg_Err (int *,char*,...) ;
 char* strdup (char*) ;
 int strlen (char const*) ;
 char* strstr (char*,char const*) ;
 char* var_GetString (int *,char const*) ;

__attribute__((used)) static int get_filter_str( vlc_object_t *p_parent, const char *psz_name,
                           bool b_add, const char **ppsz_filter_type,
                           char **ppsz_filter_value)
{
    char *psz_parser;
    char *psz_string;
    const char *psz_filter_type;

    module_t *p_obj = module_find( psz_name );
    if( !p_obj )
    {
        msg_Err( p_parent, "Unable to find filter module \"%s\".", psz_name );
        return VLC_EGENERIC;
    }

    if( module_provides( p_obj, "video filter" ) )
    {
        psz_filter_type = "video-filter";
    }
    else if( module_provides( p_obj, "sub source" ) )
    {
        psz_filter_type = "sub-source";
    }
    else if( module_provides( p_obj, "sub filter" ) )
    {
        psz_filter_type = "sub-filter";
    }
    else
    {
        msg_Err( p_parent, "Unknown video filter type." );
        return VLC_EGENERIC;
    }

    psz_string = var_GetString( p_parent, psz_filter_type );


    if( !psz_string ) psz_string = strdup("");

    psz_parser = strstr( psz_string, psz_name );
    if( b_add )
    {
        if( !psz_parser )
        {
            psz_parser = psz_string;
            if( asprintf( &psz_string, (*psz_string) ? "%s:%s" : "%s%s",
                          psz_string, psz_name ) == -1 )
            {
                free( psz_parser );
                return VLC_EGENERIC;
            }
            free( psz_parser );
        }
        else
        {
            free( psz_string );
            return VLC_EGENERIC;
        }
    }
    else
    {
        if( psz_parser )
        {
            memmove( psz_parser, psz_parser + strlen(psz_name) +
                            (*(psz_parser + strlen(psz_name)) == ':' ? 1 : 0 ),
                            strlen(psz_parser + strlen(psz_name)) + 1 );


            if( *(psz_string+strlen(psz_string ) -1 ) == ':' )
                *(psz_string+strlen(psz_string ) -1 ) = '\0';
        }
        else
        {
            free( psz_string );
            return VLC_EGENERIC;
        }
    }

    *ppsz_filter_type = psz_filter_type;
    *ppsz_filter_value = psz_string;
    return VLC_SUCCESS;
}
