
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (char const) ;
 int isalpha (char const) ;
 int strncpy (char*,char const*,size_t) ;
 scalar_t__ unlikely (int) ;
 char* vlc_alloc (size_t,int) ;

__attribute__((used)) static char* GetTag( const char** ppsz_subtitle, bool b_closing )
{
    const char* psz_subtitle = *ppsz_subtitle;
    if ( *psz_subtitle != '<' )
        return ((void*)0);

    psz_subtitle++;
    if ( b_closing && *psz_subtitle == '/' )
        psz_subtitle++;

    while ( *psz_subtitle == ' ' )
        psz_subtitle++;

    if ( !isalpha( *psz_subtitle ) )
        return ((void*)0);
    size_t tag_size = 1;
    while ( isalnum( psz_subtitle[tag_size] ) || psz_subtitle[tag_size] == '_' )
        tag_size++;
    char* psz_tagname = vlc_alloc( tag_size + 1, sizeof( *psz_tagname ) );
    if ( unlikely( !psz_tagname ) )
        return ((void*)0);
    strncpy( psz_tagname, psz_subtitle, tag_size );
    psz_tagname[tag_size] = 0;
    psz_subtitle += tag_size;
    *ppsz_subtitle = psz_subtitle;
    return psz_tagname;
}
