#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static char* FUNC6( const char** ppsz_subtitle, char** ppsz_attribute_value )
{
    const char* psz_subtitle = *ppsz_subtitle;
    char* psz_attribute_name;
    *ppsz_attribute_value = NULL;

    while (*psz_subtitle == ' ')
        psz_subtitle++;

    size_t attr_len = 0;
    char delimiter;

    while ( *psz_subtitle && FUNC1( *psz_subtitle ) )
    {
        psz_subtitle++;
        attr_len++;
    }
    if ( !*psz_subtitle || attr_len == 0 )
        return NULL;
    psz_attribute_name = FUNC3( attr_len + 1 );
    if ( FUNC5( !psz_attribute_name ) )
        return NULL;
    FUNC4( psz_attribute_name, psz_subtitle - attr_len, attr_len );
    psz_attribute_name[attr_len] = 0;

    // Skip over to the attribute value
    while ( *psz_subtitle && *psz_subtitle != '=' )
        psz_subtitle++;
    if ( !*psz_subtitle )
    {
        *ppsz_subtitle = psz_subtitle;
        return psz_attribute_name;
    }
    // Skip the '=' sign
    psz_subtitle++;

    // Aknoledge the delimiter if any
    while ( *psz_subtitle && FUNC2( *psz_subtitle) )
        psz_subtitle++;

    if ( *psz_subtitle == '\'' || *psz_subtitle == '"' )
    {
        // Save the delimiter and skip it
        delimiter = *psz_subtitle;
        psz_subtitle++;
    }
    else
        delimiter = 0;

    // Skip spaces, just in case
    while ( *psz_subtitle && FUNC2( *psz_subtitle ) )
        psz_subtitle++;

    attr_len = 0;
    while ( *psz_subtitle && ( ( delimiter != 0 && *psz_subtitle != delimiter ) ||
                               ( delimiter == 0 && ( !FUNC2(*psz_subtitle) && *psz_subtitle != '>' ) ) ) )
    {
        psz_subtitle++;
        attr_len++;
    }
    if ( attr_len == 0 )
    {
        *ppsz_subtitle = psz_subtitle;
        return psz_attribute_name;
    }
    if ( FUNC5( !( *ppsz_attribute_value = FUNC3( attr_len + 1 ) ) ) )
    {
        FUNC0( psz_attribute_name );
        return NULL;
    }
    FUNC4( *ppsz_attribute_value, psz_subtitle - attr_len, attr_len );
    (*ppsz_attribute_value)[attr_len] = 0;
    // Finally, skip over the final delimiter
    if (delimiter != 0 && *psz_subtitle)
        psz_subtitle++;
    *ppsz_subtitle = psz_subtitle;
    return psz_attribute_name;
}