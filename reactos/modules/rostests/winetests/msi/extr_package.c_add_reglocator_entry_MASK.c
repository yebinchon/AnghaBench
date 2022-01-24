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
typedef  int /*<<< orphan*/  insert ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,char const*,scalar_t__,char const*,char const*,scalar_t__) ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static UINT FUNC7( MSIHANDLE hdb, const char *sig, UINT root, const char *path,
                                  const char *name, UINT type )
{
    const char insert[] =
        "INSERT INTO `RegLocator` (`Signature_`, `Root`, `Key`, `Name`, `Type`) "
        "VALUES( '%s', %u, '%s', '%s', %u )";
    char *query;
    UINT sz, r;

    sz = FUNC6( sig ) + 10 + FUNC6( path ) + FUNC6( name ) + 10 + sizeof( insert );
    query = FUNC1( FUNC0(), 0, sz );
    FUNC5( query, insert, sig, root, path, name, type );
    r = FUNC4( hdb, query );
    FUNC2( FUNC0(), 0, query );
    FUNC3(r == ERROR_SUCCESS, "failed to insert into reglocator table: %u\n", r); \
    return r;
}