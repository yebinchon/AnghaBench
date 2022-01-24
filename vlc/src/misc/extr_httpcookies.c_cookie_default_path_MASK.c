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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*,char) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char const*,int) ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static char *FUNC5( const char *request_path )
{
    if ( request_path == NULL || request_path[0] != '/' )
        return FUNC2("/");

    char *path;
    const char *query_start = FUNC1( request_path, '?' );
    if ( query_start != NULL )
        path = FUNC3( request_path, query_start - request_path );
    else
        path = FUNC2( request_path );

    if ( path == NULL )
        return NULL;

    char *last_slash = FUNC4(path, '/');
    FUNC0(last_slash != NULL);
    if ( last_slash == path )
        path[1] = '\0';
    else
        *last_slash = '\0';

    return path;
}