#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_3__ {scalar_t__ platform; int version; size_t num_langids; int /*<<< orphan*/ * langids; } ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  int /*<<< orphan*/  LANGID ;

/* Variables and functions */
 size_t ERROR_INSTALL_LANGUAGE_UNSUPPORTED ; 
 size_t ERROR_INSTALL_PACKAGE_INVALID ; 
 size_t ERROR_INSTALL_PLATFORM_UNSUPPORTED ; 
 size_t ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ LANG_NEUTRAL ; 
 int /*<<< orphan*/  LCID_INSTALLED ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ PLATFORM_ARM ; 
 scalar_t__ PLATFORM_INTEL64 ; 
 scalar_t__ PLATFORM_X64 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBLANG_NEUTRAL ; 
 int /*<<< orphan*/  is_64bit ; 
 int /*<<< orphan*/  is_wow64 ; 

__attribute__((used)) static UINT FUNC5( MSIPACKAGE *package )
{
    UINT i;

    if (package->platform == PLATFORM_INTEL64)
        return ERROR_INSTALL_PLATFORM_UNSUPPORTED;
#ifndef __arm__
    if (package->platform == PLATFORM_ARM)
        return ERROR_INSTALL_PLATFORM_UNSUPPORTED;
#endif
    if (package->platform == PLATFORM_X64)
    {
        if (!is_64bit && !is_wow64)
            return ERROR_INSTALL_PLATFORM_UNSUPPORTED;
        if (package->version < 200)
            return ERROR_INSTALL_PACKAGE_INVALID;
    }
    if (!package->num_langids)
    {
        return ERROR_SUCCESS;
    }
    for (i = 0; i < package->num_langids; i++)
    {
        LANGID langid = package->langids[i];

        if (FUNC3( langid ) == LANG_NEUTRAL)
        {
            langid = FUNC2( FUNC3( FUNC0() ), FUNC4( langid ) );
        }
        if (FUNC4( langid ) == SUBLANG_NEUTRAL)
        {
            langid = FUNC2( FUNC3( langid ), FUNC4( FUNC0() ) );
        }
        if (FUNC1( langid, LCID_INSTALLED ))
            return ERROR_SUCCESS;
    }
    return ERROR_INSTALL_LANGUAGE_UNSUPPORTED;
}