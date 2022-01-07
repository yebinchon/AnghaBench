
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sout_stream_t ;


 char* getMuxFromAlias (char const*) ;
 int msg_Err (int *,char*) ;
 int msg_Warn (int *,char*,char const*) ;
 int strcmp (char*,char*) ;
 char* strdup (char const*) ;
 int strncmp (char*,char*,int) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int fixAccessMux( sout_stream_t *p_stream, char **ppsz_mux,
                          char **ppsz_access, const char *psz_url )
{
    char *psz_mux = *ppsz_mux;
    char *psz_access = *ppsz_access;
    if( !psz_mux )
    {
        const char *psz_ext = psz_url ? strrchr( psz_url, '.' ) : ((void*)0);
        if( psz_ext )
            psz_ext++;
        const char *psz_mux_byext = getMuxFromAlias( psz_ext );

        if( !psz_access )
        {
            if( !psz_mux_byext )
            {
                msg_Err( p_stream, "no access _and_ no muxer" );
                return 1;
            }

            msg_Warn( p_stream,
                    "no access _and_ no muxer, extension gives file/%s",
                    psz_mux_byext );
            *ppsz_access = strdup("file");
            *ppsz_mux = strdup(psz_mux_byext);
        }
        else
        {
            if( !strncmp( psz_access, "mmsh", 4 ) )
                *ppsz_mux = strdup("asfh");
            else if (!strcmp (psz_access, "udp"))
                *ppsz_mux = strdup("ts");
            else if( psz_mux_byext )
                *ppsz_mux = strdup(psz_mux_byext);
            else
            {
                msg_Err( p_stream, "no mux specified or found by extension" );
                return 1;
            }
        }
    }
    else if( !psz_access )
    {
        if( !strncmp( psz_mux, "asfh", 4 ) )
            *ppsz_access = strdup("mmsh");
        else
            *ppsz_access = strdup("file");
    }
    return 0;
}
