
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strcasestr (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static bool IsClosed( const char* psz_subtitle, const char* psz_tagname )
{
    const char* psz_tagpos = strcasestr( psz_subtitle, psz_tagname );
    if ( !psz_tagpos )
        return 0;

    const char* psz_endtag = psz_tagpos + strlen( psz_tagname );
    while ( *psz_endtag == ' ' )
        psz_endtag++;
    if ( *psz_endtag != '>' )
        return 0;

    psz_tagpos--;
    while ( *psz_tagpos == ' ' && psz_tagpos > psz_subtitle )
        psz_tagpos--;
    if ( *psz_tagpos-- != '/' )
        return 0;
    if ( *psz_tagpos != '<' )
        return 0;
    return 1;
}
