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
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

void FUNC4(const WCHAR* name, const char* contents, size_t len)
{
    HANDLE file = FUNC1(name, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    FUNC3(file != INVALID_HANDLE_VALUE, "can't create file\n");
    if (file != INVALID_HANDLE_VALUE)
    {
        if (contents && len)
        {
            DWORD size;
            FUNC2(file, contents, (DWORD)len, &size, NULL);
        }
        FUNC0(file);
    }
}