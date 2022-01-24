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
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  NAME_ID_FULL_FONT_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static WCHAR *FUNC7( const WCHAR *filename )
{
    static const WCHAR truetypeW[] = {' ','(','T','r','u','e','T','y','p','e',')',0};
    WCHAR *name, *ret = NULL;

    if ((name = FUNC1( filename, NAME_ID_FULL_FONT_NAME )))
    {
        if (!name[0])
        {
            FUNC0("empty font name\n");
            FUNC3( name );
            return NULL;
        }
        ret = FUNC2( (FUNC6( name ) + FUNC6( truetypeW ) + 1 ) * sizeof(WCHAR) );
        FUNC5( ret, name );
        FUNC4( ret, truetypeW );
        FUNC3( name );
    }
    return ret;
}