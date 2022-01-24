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
typedef  int /*<<< orphan*/  dw ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static DWORD FUNC4( HKEY root, const char *name, DWORD flags )
{
    HKEY key;
    DWORD err, type, dw, len = sizeof(dw);

    err = FUNC1( root, name, 0, NULL, 0, flags | KEY_ALL_ACCESS, NULL, &key, NULL );
    if (err == ERROR_FILE_NOT_FOUND) return 0;
    FUNC3( err == ERROR_SUCCESS, "%08x: RegCreateKeyEx failed: %u\n", flags, err );

    err = FUNC2( key, "value", NULL, &type, (BYTE *)&dw, &len );
    if (err == ERROR_FILE_NOT_FOUND)
        dw = 0;
    else
        FUNC3( err == ERROR_SUCCESS, "%08x: RegQueryValueEx failed: %u\n", flags, err );
    FUNC0( key );
    return dw;
}