
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int strncasecmp (char const*,char*,int) ;
 char* strnstr (char const*,char*,size_t const) ;

__attribute__((used)) static bool ContainsURL(const uint8_t *p_peek, size_t i_peek)
{
    const char *ps = (const char *)p_peek;
    const char *ps_end = (const char *) p_peek + i_peek;
    const size_t i_max = sizeof( "https://" );
    if( i_peek < i_max + 1 )
        return 0;

    bool b_newline = 1;
    while( ps + i_max + 1 < ps_end )
    {
        if( *ps <= 0 )
            return 0;


        if( *ps == '\n' )
        {
            ps++;
            b_newline = 1;
            continue;
        }


        if( b_newline )
        {
            const char *ps_match = strnstr( ps, "://", i_max );
            if(ps_match)
            {
                switch(ps_match - ps)
                {
                    case 3:
                        if( !strncasecmp( ps, "mms", 3 ) ||
                            !strncasecmp( ps, "ftp", 3 ) )
                            return 1;
                        break;
                    case 4:
                        if( !strncasecmp( ps, "http", 4 ) ||
                            !strncasecmp( ps, "rtsp", 4 ) ||
                            !strncasecmp( ps, "ftps", 4 ) )
                            return 1;
                        break;
                    case 5:
                        if( !strncasecmp( ps, "https", 5 ) ||
                            !strncasecmp( ps, "ftpes", 5 ) )
                            return 1;
                    default:
                        break;
                }
            }


            if( *ps != '#' && *ps != '\n' && *ps != '\r')
                return 0;

            b_newline = 0;
        }

        ps++;
    }
    return 0;
}
