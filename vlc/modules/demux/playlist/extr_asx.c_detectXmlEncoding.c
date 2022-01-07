
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;
 int strcspn (char const*,char*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 char* strndup (char const*,int) ;
 int strspn (char const*,char*) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static char *detectXmlEncoding( const char *psz_xml )
{
    const char *psz_keyword_begin = ((void*)0);
    const char *psz_keyword_end = ((void*)0);

    const char *psz_value_begin = ((void*)0);
    const char *psz_value_end = ((void*)0);

    psz_xml += strspn( psz_xml, " \n\r\t" );
    if( strncasecmp( psz_xml, "<?xml", 5 ) != 0 )
        return ((void*)0);
    psz_xml += 5;

    const char *psz_end = strstr( psz_xml, "?>" );
    if( psz_end == ((void*)0) )
        return ((void*)0);

    while( psz_xml < psz_end )
    {
        psz_keyword_begin = psz_xml = psz_xml + strspn( psz_xml, " \n\r\t" );
        if( *psz_xml == '\0' )
            return ((void*)0);
        psz_keyword_end = psz_xml = psz_xml + strcspn( psz_xml, " \n\r\t=" );
        if( *psz_xml == '\0' )
            return ((void*)0);

        psz_xml += strspn( psz_xml, " \n\r\t" );
        if( *psz_xml != '=' )
            return ((void*)0);
        psz_xml++;

        psz_xml += strspn( psz_xml, " \n\r\t" );
        char quote = *psz_xml;
        if( quote != '"' && quote != '\'' )
            return ((void*)0);

        psz_value_begin = ++psz_xml;
        psz_value_end = psz_xml = strchr( psz_xml, quote );
        if( psz_xml == ((void*)0) )
            return ((void*)0);
        psz_xml++;

        if( strncasecmp( psz_keyword_begin, "encoding", psz_keyword_end - psz_keyword_begin ) == 0
             && ( psz_value_end -psz_value_begin) > 0 )
        {
            return strndup(psz_value_begin, psz_value_end -psz_value_begin);
        }
    }

    return ((void*)0);
}
