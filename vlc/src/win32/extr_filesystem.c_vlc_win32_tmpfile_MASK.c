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
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int DELETE ; 
 int FILE_ATTRIBUTE_TEMPORARY ; 
 int FILE_FLAG_DELETE_ON_CLOSE ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int,char*) ; 
 int FUNC7 (intptr_t,int /*<<< orphan*/ ) ; 

FILE *FUNC8(void)
{
    WCHAR tmp_path[MAX_PATH-14];
    int i_ret = FUNC3 (MAX_PATH-14, tmp_path);
    if (i_ret == 0)
        return NULL;

    WCHAR tmp_name[MAX_PATH];
    i_ret = FUNC2(tmp_path, FUNC4("VLC"), 0, tmp_name);
    if (i_ret == 0)
        return NULL;

    HANDLE hFile = FUNC1(tmp_name,
            GENERIC_READ | GENERIC_WRITE | DELETE, 0, NULL, CREATE_ALWAYS,
            FILE_ATTRIBUTE_TEMPORARY | FILE_FLAG_DELETE_ON_CLOSE, NULL);
    if (hFile == INVALID_HANDLE_VALUE)
        return NULL;

    int fd = FUNC7((intptr_t)hFile, 0);
    if (fd == -1) {
        FUNC0(hFile);
        return NULL;
    }

    FILE *stream = FUNC6(fd, "w+b");
    if (stream == NULL) {
        FUNC5(fd);
        return NULL;
    }
    return stream;
}