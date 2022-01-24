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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int atari_format ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void FUNC6( void )
{
#ifdef __mc68000__
    FILE *f;
    char line[128], *p;

    if (!(f = fopen( "/proc/hardware", "r" ))) {
	perror( "/proc/hardware" );
	return;
    }

    while( fgets( line, sizeof(line), f ) ) {
	if (strncmp( line, "Model:", 6 ) == 0) {
	    p = line + 6;
	    p += strspn( p, " \t" );
	    if (strncmp( p, "Atari ", 6 ) == 0)
		atari_format = 1;
	    break;
	}
    }
    fclose( f );
#endif
}