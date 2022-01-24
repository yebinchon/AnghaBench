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
 char DIR_SEP_CHAR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 

__attribute__((used)) static void FUNC4( const char *psz_dir )
{
    char newdir[FUNC2( psz_dir ) + 1];
    FUNC1( newdir, psz_dir );
    char * psz_newdir = newdir;
    char * psz = psz_newdir;

    while( *psz )
    {
        while( *psz && *psz != DIR_SEP_CHAR) psz++;
        if( !*psz ) break;
        *psz = 0;
        if( !FUNC0( psz_newdir ) )
            FUNC3( psz_newdir, 0700 );
        *psz = DIR_SEP_CHAR;
        psz++;
    }
    FUNC3( psz_dir, 0700 );
}