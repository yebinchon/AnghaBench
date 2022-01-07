
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 scalar_t__ isalpha (char const) ;
 scalar_t__ isspace (char const) ;
 char* malloc (size_t) ;
 int strncpy (char*,char const*,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static char* ConsumeAttribute( const char** ppsz_subtitle, char** ppsz_attribute_value )
{
    const char* psz_subtitle = *ppsz_subtitle;
    char* psz_attribute_name;
    *ppsz_attribute_value = ((void*)0);

    while (*psz_subtitle == ' ')
        psz_subtitle++;

    size_t attr_len = 0;
    char delimiter;

    while ( *psz_subtitle && isalpha( *psz_subtitle ) )
    {
        psz_subtitle++;
        attr_len++;
    }
    if ( !*psz_subtitle || attr_len == 0 )
        return ((void*)0);
    psz_attribute_name = malloc( attr_len + 1 );
    if ( unlikely( !psz_attribute_name ) )
        return ((void*)0);
    strncpy( psz_attribute_name, psz_subtitle - attr_len, attr_len );
    psz_attribute_name[attr_len] = 0;


    while ( *psz_subtitle && *psz_subtitle != '=' )
        psz_subtitle++;
    if ( !*psz_subtitle )
    {
        *ppsz_subtitle = psz_subtitle;
        return psz_attribute_name;
    }

    psz_subtitle++;


    while ( *psz_subtitle && isspace( *psz_subtitle) )
        psz_subtitle++;

    if ( *psz_subtitle == '\'' || *psz_subtitle == '"' )
    {

        delimiter = *psz_subtitle;
        psz_subtitle++;
    }
    else
        delimiter = 0;


    while ( *psz_subtitle && isspace( *psz_subtitle ) )
        psz_subtitle++;

    attr_len = 0;
    while ( *psz_subtitle && ( ( delimiter != 0 && *psz_subtitle != delimiter ) ||
                               ( delimiter == 0 && ( !isspace(*psz_subtitle) && *psz_subtitle != '>' ) ) ) )
    {
        psz_subtitle++;
        attr_len++;
    }
    if ( attr_len == 0 )
    {
        *ppsz_subtitle = psz_subtitle;
        return psz_attribute_name;
    }
    if ( unlikely( !( *ppsz_attribute_value = malloc( attr_len + 1 ) ) ) )
    {
        free( psz_attribute_name );
        return ((void*)0);
    }
    strncpy( *ppsz_attribute_value, psz_subtitle - attr_len, attr_len );
    (*ppsz_attribute_value)[attr_len] = 0;

    if (delimiter != 0 && *psz_subtitle)
        psz_subtitle++;
    *ppsz_subtitle = psz_subtitle;
    return psz_attribute_name;
}
