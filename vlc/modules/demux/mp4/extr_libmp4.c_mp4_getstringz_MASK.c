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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;

/* Variables and functions */
 int SSIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC4 (char const*,int) ; 

__attribute__((used)) static char *FUNC5( uint8_t **restrict in, uint64_t *restrict size )
{
    FUNC0( *size <= SSIZE_MAX );

    if( *size == 0 )
        return NULL;

    if( *in == 0 ) /* Null string stored */
    {
        *in += 1;
        *size -= 1;
        return NULL;
    }

    size_t len = FUNC4( (const char *)*in, *size );
    if( len == 0 || len >= *size )
        return NULL;

    len++;

    char *ret = FUNC2( len );
    if( FUNC1(ret != NULL) )
        FUNC3( ret, *in, len );
    *in += len;
    *size -= len;
    return ret;
}