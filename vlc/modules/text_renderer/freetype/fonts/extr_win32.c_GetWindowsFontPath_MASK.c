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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  CSIDL_FONTS ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  SHGFP_TYPE_CURRENT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char* FUNC5()
{
    wchar_t wdir[MAX_PATH];
    if( S_OK != FUNC2( NULL, CSIDL_FONTS, NULL, SHGFP_TYPE_CURRENT, wdir ) )
    {
        FUNC1( wdir, MAX_PATH );
        FUNC4( wdir, FUNC3("\\fonts") );
    }
    return FUNC0( wdir );
}