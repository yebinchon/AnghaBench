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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char**,size_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3( char **ppsz_line, size_t *pi_size, FILE *p_file )
{
    ssize_t read = FUNC2( ppsz_line, pi_size, p_file );

    if( read == -1 )
    {
        /* automatically free buffer on eof */
        FUNC1( *ppsz_line );
        *ppsz_line = NULL;
        return false;
    }

    if( read > 0 && (*ppsz_line)[ read - 1 ] == '\n' )
        (*ppsz_line)[ read - 1 ] = '\0';
    FUNC0( *ppsz_line );

    return true;
}