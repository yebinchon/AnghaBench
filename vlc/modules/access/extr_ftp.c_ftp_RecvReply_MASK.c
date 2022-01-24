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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 unsigned int FUNC5 (char*,char**,int) ; 

__attribute__((used)) static int FUNC6( vlc_object_t *obj, access_sys_t *sys,
                          char **restrict strp,
                          void (*cb)(void *, const char *), void *opaque )
{
    char *resp = FUNC1( obj, sys );
    if( resp == NULL )
        return -1;

    char *end;
    unsigned code = FUNC5( resp, &end, 10 );
    if( (end - resp) != 3 || (*end != '-' && *end != ' ') )
    {
        FUNC3( obj, "malformatted response" );
        goto error;
    }
    FUNC2( obj, "received response: \"%s\"", resp );

    if( *end == '-' ) /* Multi-line response */
    {
        bool done;

        *end = ' ';
        do
        {
            char *line = FUNC1( obj, sys );
            if( line == NULL )
                goto error;

            done = !FUNC4( resp, line, 4 );
            if( !done )
                cb( opaque, line );
            FUNC0( line );
        }
        while( !done );
    }

    if( strp != NULL )
        *strp = resp;
    else
        FUNC0( resp );
    return code;
error:
    FUNC0( resp );
    return -1;
}