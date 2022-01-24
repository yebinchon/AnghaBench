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
struct vlc_memstream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_memstream*,char*) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3( struct vlc_memstream *p_stream, const char *psz )
{
    char *psz_entities = FUNC2( psz );
    if( psz_entities )
    {
        FUNC1( p_stream, psz_entities );
        FUNC0( psz_entities );
    }
}