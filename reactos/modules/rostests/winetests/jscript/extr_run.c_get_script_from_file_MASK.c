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
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BSTR FUNC10(const char *filename)
{
    DWORD size, len;
    HANDLE file, map;
    const char *file_map;
    BSTR ret;

    file = FUNC1(filename, GENERIC_READ, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_READONLY, NULL);
    if(file == INVALID_HANDLE_VALUE) {
        FUNC9("Could not open file: %u\n", FUNC4());
        return NULL;
    }

    size = FUNC3(file, NULL);

    map = FUNC2(file, NULL, PAGE_READONLY, 0, 0, NULL);
    FUNC0(file);
    if(map == INVALID_HANDLE_VALUE) {
        FUNC9("Could not create file mapping: %u\n", FUNC4());
        return NULL;
    }

    file_map = FUNC5(map, FILE_MAP_READ, 0, 0, 0);
    FUNC0(map);
    if(!file_map) {
        FUNC9("MapViewOfFile failed: %u\n", FUNC4());
        return NULL;
    }

    len = FUNC6(CP_ACP, 0, file_map, size, NULL, 0);
    ret = FUNC7(NULL, len);
    FUNC6(CP_ACP, 0, file_map, size, ret, len);

    FUNC8(file_map);

    return ret;
}