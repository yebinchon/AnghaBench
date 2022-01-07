
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 int strspn (char const*,char*) ;
 int vlc_ascii_strncasecmp (char const*,char const*,size_t) ;

__attribute__((used)) static bool cookie_has_attribute( const char *cookie, const char *attr )
{
    size_t attrlen = strlen(attr);
    const char * str = strchr(cookie, ';');
    while( str )
    {

        str++;
        str += strspn( str, " " );

        if( !vlc_ascii_strncasecmp( str, attr, attrlen )
         && (str[attrlen] == '=' || str[attrlen] == ';' || str[attrlen] == '\0') )
            return 1;

        str = strchr(str, ';');
    }
    return 0;
}
