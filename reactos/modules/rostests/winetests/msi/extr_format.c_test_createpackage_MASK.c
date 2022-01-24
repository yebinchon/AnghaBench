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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_INSTALL_PACKAGE_REJECTED ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    MSIHANDLE hPackage = 0;
    UINT res;

    res = FUNC2( msifile, &hPackage );
    if (res == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        FUNC4("Not enough rights to perform tests\n");
        return;
    }
    FUNC3( res == ERROR_SUCCESS, "Failed to create package %u\n", res );

    res = FUNC1( hPackage );
    FUNC3( res == ERROR_SUCCESS , "Failed to close package %u\n", res );

    FUNC0( msifile );
}