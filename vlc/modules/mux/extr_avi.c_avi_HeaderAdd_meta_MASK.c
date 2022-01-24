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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3( bo_t *p_bo, const char psz_meta[4],
                               const char *psz_data )
{
    if ( psz_data == NULL ) return 1;
    const char *psz = psz_data;
    FUNC0( psz_meta );
    while (*psz) FUNC2( p_bo, *psz++ );
    FUNC2( p_bo, 0 );
    FUNC1( 0 );
}