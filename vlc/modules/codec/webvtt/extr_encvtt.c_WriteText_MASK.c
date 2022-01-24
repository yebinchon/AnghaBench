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
typedef  int /*<<< orphan*/  bo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,char const*) ; 
 char* FUNC2 (char const*,char) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4( const char *psz, bo_t *box, char *c_last )
{
    /* We need to break any double newline sequence
     * in or over segments */
    while(*psz)
    {
        const char *p = FUNC2( psz, '\n' );
        if( p )
        {
            FUNC1( box, p - psz, psz );
            if( *c_last == '\n' )
                FUNC0( box, '!' ); /* Add space */
            FUNC0( box, '\n' );
            *c_last = '\n';
            psz = p + 1;
        }
        else
        {
            size_t len = FUNC3(psz);
            FUNC1( box, len, psz );
            *c_last = (len > 0) ? psz[len - 1] : '\0';
            break;
        }
    }
}