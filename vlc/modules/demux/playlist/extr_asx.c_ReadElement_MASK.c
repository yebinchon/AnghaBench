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
typedef  int /*<<< orphan*/  xml_reader_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static bool FUNC4( xml_reader_t *p_xml_reader, char **ppsz_txt )
{
    const char *psz_node = NULL;

    /* Read the text node */
    int ret = FUNC3( p_xml_reader, &psz_node );
    if( ret <= 0 )
        return false;
    FUNC0( *ppsz_txt );
    *ppsz_txt = FUNC1( psz_node );
    FUNC2( *ppsz_txt );

    /* Read the end element */
    FUNC3( p_xml_reader, &psz_node );
    /* TODO :
     * Currently we don't check the agreement of start and end element
     * This function is only used to read the element that cannot have child
     * according to the reference.
     */
    return true;
}