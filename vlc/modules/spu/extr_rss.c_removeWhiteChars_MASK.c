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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3( const char *psz_src )
{
    char *psz_src2,*psz_clean, *psz_clean2;
    psz_src2 = psz_clean = FUNC1( psz_src );
    int i;

    while( ( *psz_clean == ' ' || *psz_clean == '\t'
           || *psz_clean == '\n' || *psz_clean == '\r' )
           && *psz_clean != '\0' )
    {
        psz_clean++;
    }
    i = FUNC2( psz_clean );
    while( --i > 0 &&
         ( psz_clean[i] == ' ' || psz_clean[i] == '\t'
        || psz_clean[i] == '\n' || psz_clean[i] == '\r' ) );
    psz_clean[i+1] = '\0';
    psz_clean2 = FUNC1( psz_clean );
    FUNC0( psz_src2 );
    return psz_clean2;
}