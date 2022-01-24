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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

int FUNC3( FILE *p_cmd, FILE *p_res ) {
    int i_overlay;

    FUNC2( "Getting an overlay..." );
    FUNC0( p_cmd, p_res, "GenImage\n" );
    FUNC1( p_res, "%d", &i_overlay );
    FUNC2( " done. Overlay is %d\n", i_overlay );

    return i_overlay;
}