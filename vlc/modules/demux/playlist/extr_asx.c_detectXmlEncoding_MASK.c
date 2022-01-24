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
 char* FUNC0 (char const*,char) ; 
 int FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 char* FUNC3 (char const*,int) ; 
 int FUNC4 (char const*,char*) ; 
 char* FUNC5 (char const*,char*) ; 

__attribute__((used)) static char *FUNC6( const char *psz_xml )
{
    const char *psz_keyword_begin = NULL;
    const char *psz_keyword_end = NULL;

    const char *psz_value_begin = NULL;
    const char *psz_value_end = NULL;

    psz_xml += FUNC4( psz_xml, " \n\r\t" );
    if( FUNC2( psz_xml, "<?xml", 5 ) != 0 )
        return NULL;
    psz_xml += 5;

    const char *psz_end = FUNC5( psz_xml, "?>" );
    if( psz_end == NULL )
        return NULL;

    while( psz_xml < psz_end )
    {
        psz_keyword_begin = psz_xml = psz_xml + FUNC4( psz_xml, " \n\r\t" );
        if( *psz_xml == '\0' )
            return NULL;
        psz_keyword_end = psz_xml = psz_xml + FUNC1( psz_xml, " \n\r\t=" );
        if( *psz_xml == '\0' )
            return NULL;

        psz_xml += FUNC4( psz_xml, " \n\r\t" );
        if( *psz_xml != '=' )
            return NULL;
        psz_xml++;

        psz_xml += FUNC4( psz_xml, " \n\r\t" );
        char quote = *psz_xml;
        if( quote != '"' && quote != '\'' )
            return NULL;

        psz_value_begin = ++psz_xml;
        psz_value_end = psz_xml = FUNC0( psz_xml, quote );
        if( psz_xml == NULL )
            return NULL;
        psz_xml++;

        if( FUNC2( psz_keyword_begin, "encoding", psz_keyword_end -  psz_keyword_begin ) == 0
             && ( psz_value_end -psz_value_begin) > 0 )
        {
            return FUNC3(psz_value_begin, psz_value_end -psz_value_begin);
        }
    }

    return NULL;
}