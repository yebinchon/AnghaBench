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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC5(LPCSTR path, const VOID *data, DWORD size)
{
    HANDLE file;
    CHAR buf[MAX_PATH];
    BOOL ret;

    file = FUNC1(path, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, 0);
    if (file == INVALID_HANDLE_VALUE)
      return FALSE;

    if(size != FUNC2(file, NULL) )
    {
        FUNC0(file);
        return FALSE;
    }

    ret = FUNC3(file, buf, size, &size, NULL);
    FUNC0(file);
    if (!ret)
      return FALSE;

    return !FUNC4(buf, data, size);
}