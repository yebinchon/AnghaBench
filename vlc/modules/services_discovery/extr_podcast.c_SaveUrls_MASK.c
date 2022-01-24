#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ services_discovery_t ;
struct TYPE_5__ {int i_urls; char** ppsz_urls; } ;
typedef  TYPE_2__ services_discovery_sys_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5( services_discovery_t *p_sd )
{
    services_discovery_sys_t *p_sys = p_sd->p_sys;
    int i;
    char *psz_urls;
    int len = 0;

    for( i=0; i < p_sys->i_urls; i++ )
        len += FUNC4( p_sys->ppsz_urls[i] ) + 1;

    psz_urls = (char*) FUNC0( len, sizeof(char) );

    for( i=0; i < p_sys->i_urls; i++ )
    {
        FUNC3( psz_urls, p_sys->ppsz_urls[i] );
        if( i < p_sys->i_urls - 1 ) FUNC3( psz_urls, "|" );
    }

    FUNC1( "podcast-urls", psz_urls );

    FUNC2( psz_urls );
}