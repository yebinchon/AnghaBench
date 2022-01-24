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
 char* FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int FUNC3 (char*,char*) ; 

__attribute__((used)) static char *FUNC4( const char *cookie )
{
    char *domain = FUNC0( cookie, "domain" );
    if( domain == NULL )
        return NULL;

    if( domain[0] == '.' )
    {
        const char *real_domain = domain + FUNC3( domain, "." );
        FUNC1( domain, real_domain, FUNC2( real_domain ) + 1 );
    }
    return domain;
}