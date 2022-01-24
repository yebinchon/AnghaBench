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
 size_t FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,size_t) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static bool FUNC4( char **ppsz_path, char **ppsz_token, int *pi_number )
{
    size_t i_len ;
    if( !*ppsz_path[0] )
    {
        *ppsz_token = NULL;
        *pi_number = 0;
        return true;
    }
    i_len = FUNC0( *ppsz_path, "/[" );
    if( !i_len && **ppsz_path == '/' )
    {
        i_len = 1;
    }
    *ppsz_token = FUNC1( *ppsz_path, i_len );
    if( FUNC3(!*ppsz_token) )
        return false;

    *ppsz_path += i_len;

    /* Parse the token number token[n] */
    if( **ppsz_path == '[' )
    {
        (*ppsz_path)++;
        *pi_number = FUNC2( *ppsz_path, NULL, 10 );
        while( **ppsz_path && **ppsz_path != ']' )
        {
            (*ppsz_path)++;
        }
        if( **ppsz_path == ']' )
        {
            (*ppsz_path)++;
        }
    }
    else
    {
        *pi_number = 0;
    }

    /* Forward to start of next token */
    while( **ppsz_path == '/' )
    {
        (*ppsz_path)++;
    }

    return true;
}