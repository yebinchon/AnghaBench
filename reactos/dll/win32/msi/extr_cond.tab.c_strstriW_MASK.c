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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static WCHAR *FUNC4( const WCHAR *str, const WCHAR *sub )
{
    LPWSTR strlower, sublower, r;
    strlower = FUNC0( FUNC2( str ) );
    sublower = FUNC0( FUNC2( sub ) );
    r = FUNC3( strlower, sublower );
    if (r)
        r = (LPWSTR)str + (r - strlower);
    FUNC1( strlower );
    FUNC1( sublower );
    return r;
}