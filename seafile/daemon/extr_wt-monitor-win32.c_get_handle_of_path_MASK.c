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
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FILE_FLAG_BACKUP_SEMANTICS ; 
 int FILE_FLAG_OVERLAPPED ; 
 int /*<<< orphan*/  FILE_LIST_DIRECTORY ; 
 int FILE_SHARE_DELETE ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HANDLE
FUNC5(const wchar_t *path)
{
    HANDLE dir_handle = NULL;

    dir_handle = FUNC0
        (path,                  /* file name */
         FILE_LIST_DIRECTORY,   /* desired access */
         FILE_SHARE_DELETE | FILE_SHARE_READ
         | FILE_SHARE_WRITE,    /* share mode */
         NULL,                  /* securitry attr */
         OPEN_EXISTING,         /* open options */
         FILE_FLAG_BACKUP_SEMANTICS |
         FILE_FLAG_OVERLAPPED,  /* flags needed for asynchronous IO*/
         NULL);                 /* template file */

    if (dir_handle == INVALID_HANDLE_VALUE) {
        char *path_utf8 = FUNC3 (path, -1, NULL, NULL, NULL);
        FUNC4("failed to create dir handle for path %s, "
                     "error code %lu", path_utf8, FUNC1());
        FUNC2 (path_utf8);
        return NULL;
    }

    return dir_handle;
}