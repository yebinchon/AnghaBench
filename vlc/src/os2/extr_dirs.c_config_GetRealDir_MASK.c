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
typedef  int /*<<< orphan*/  realdir ;

/* Variables and functions */
 int /*<<< orphan*/  CCHMAXPATH ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC4( const char *dir )
{
    char realdir[ CCHMAXPATH + 4 ];

    FUNC3( realdir, sizeof( realdir ), "%s%s",
              FUNC1(), FUNC2( dir ));

    return FUNC0( realdir );
}