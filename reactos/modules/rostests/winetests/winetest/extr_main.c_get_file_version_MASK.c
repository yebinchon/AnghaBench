#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int dwFileVersionMS; int dwFileVersionLS; } ;
typedef  TYPE_1__ VS_FIXEDFILEINFO ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,scalar_t__,scalar_t__,char*) ; 
 scalar_t__ FUNC1 (char*,scalar_t__*) ; 
 scalar_t__ FUNC2 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 char* FUNC5 (scalar_t__) ; 

__attribute__((used)) static char * FUNC6(char * file_name)
{
    static char version[32];
    DWORD size;
    DWORD handle;

    size = FUNC1(file_name, &handle);
    if (size) {
        char * data = FUNC5(size);
        if (data) {
            if (FUNC0(file_name, handle, size, data)) {
                static char backslash[] = "\\";
                VS_FIXEDFILEINFO *pFixedVersionInfo;
                UINT len;
                if (FUNC2(data, backslash, (LPVOID *)&pFixedVersionInfo, &len)) {
                    FUNC4(version, "%d.%d.%d.%d",
                            pFixedVersionInfo->dwFileVersionMS >> 16,
                            pFixedVersionInfo->dwFileVersionMS & 0xffff,
                            pFixedVersionInfo->dwFileVersionLS >> 16,
                            pFixedVersionInfo->dwFileVersionLS & 0xffff);
                } else
                    FUNC4(version, "version not available");
            } else
                FUNC4(version, "unknown");
            FUNC3(data);
        } else
            FUNC4(version, "failed");
    } else
        FUNC4(version, "version not available");

    return version;
}