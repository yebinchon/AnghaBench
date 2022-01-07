
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char const*) ;
 int strlcpy (char*,char const*,int) ;
 char* strrchr (char const*,char) ;
 char tolower (unsigned char) ;

__attribute__((used)) static void strcpy_strip_ext( char *d, const char *s )
{
    unsigned char c;

    const char *tmp = strrchr(s, '.');
    if( !tmp )
    {
        strcpy(d, s);
        return;
    }
    else
        strlcpy(d, s, tmp - s + 1 );
    while( (c = *d) != '\0' )
    {
        *d = tolower(c);
        d++;
    }
}
