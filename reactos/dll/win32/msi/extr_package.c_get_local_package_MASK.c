#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIDATABASE ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_INSTALL_PACKAGE_INVALID ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  MSIDBOPEN_READONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC7( const WCHAR *filename, WCHAR *localfile )
{
    WCHAR *product_code, *package_code;
    MSIDATABASE *db;
    UINT r;

    if ((r = FUNC1( filename, MSIDBOPEN_READONLY, &db )) != ERROR_SUCCESS)
    {
        if (FUNC0( filename ) == INVALID_FILE_ATTRIBUTES)
            return ERROR_FILE_NOT_FOUND;
        return r;
    }
    if (!(product_code = FUNC3( db )))
    {
        FUNC6( &db->hdr );
        return ERROR_INSTALL_PACKAGE_INVALID;
    }
    if (!(package_code = FUNC2( db )))
    {
        FUNC5( product_code );
        FUNC6( &db->hdr );
        return ERROR_INSTALL_PACKAGE_INVALID;
    }
    r = FUNC4( product_code, package_code, localfile );
    FUNC5( package_code );
    FUNC5( product_code );
    FUNC6( &db->hdr );
    return r;
}