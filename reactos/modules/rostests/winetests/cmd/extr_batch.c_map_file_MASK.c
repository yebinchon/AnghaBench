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
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_READONLY ; 
 int /*<<< orphan*/  FILE_MAP_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 char* FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char const*,...) ; 

__attribute__((used)) static DWORD FUNC7(const char *file_name, const char **ret)
{
    HANDLE file, map;
    DWORD size;

    file = FUNC1(file_name, GENERIC_READ, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_READONLY, NULL);
    FUNC6(file != INVALID_HANDLE_VALUE, "CreateFile failed: %08x\n", FUNC4());
    if(file == INVALID_HANDLE_VALUE)
        return 0;

    size = FUNC3(file, NULL);

    map = FUNC2(file, NULL, PAGE_READONLY, 0, 0, NULL);
    FUNC0(file);
    FUNC6(map != NULL, "CreateFileMappingA(%s) failed: %u\n", file_name, FUNC4());
    if(!map)
        return 0;

    *ret = FUNC5(map, FILE_MAP_READ, 0, 0, 0);
    FUNC6(*ret != NULL, "MapViewOfFile failed: %u\n", FUNC4());
    FUNC0(map);
    if(!*ret)
        return 0;

    return size;
}