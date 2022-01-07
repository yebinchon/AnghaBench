
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;
 size_t strlen (char const*) ;
 int strncmp (char const*,char const*,size_t const) ;

__attribute__((used)) static bool KeywordMatch( const char *psz, const char *keyword )
{
    const size_t i_len = strlen(keyword);
    return( !strncmp( keyword, psz, i_len ) && (!psz[i_len] || isspace(psz[i_len])) );
}
