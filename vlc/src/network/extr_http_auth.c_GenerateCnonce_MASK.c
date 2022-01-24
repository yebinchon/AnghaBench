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
struct md5_s {int dummy; } ;
typedef  int /*<<< orphan*/  ps_random ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct md5_s*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct md5_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct md5_s*) ; 
 char* FUNC3 (struct md5_s*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static char *FUNC5()
{
    char ps_random[32];
    struct md5_s md5;

    FUNC4( ps_random, sizeof( ps_random ) );

    FUNC2( &md5 );
    FUNC0( &md5, ps_random, sizeof( ps_random ) );
    FUNC1( &md5 );

    return FUNC3( &md5 );
}