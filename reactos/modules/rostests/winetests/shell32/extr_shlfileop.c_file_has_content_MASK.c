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
typedef  size_t DWORD ;
typedef  scalar_t__ CHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*,int,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__*,scalar_t__ const*) ; 

__attribute__((used)) static BOOL FUNC4(const CHAR *name, const CHAR *content)
{
    CHAR buf[MAX_PATH];
    HANDLE file;
    DWORD read;

    file = FUNC1(name, GENERIC_READ, 0, NULL, OPEN_EXISTING, 0, NULL);
    if (file == INVALID_HANDLE_VALUE)
        return FALSE;
    FUNC2(file, buf, MAX_PATH - 1, &read, NULL);
    buf[read] = 0;
    FUNC0(file);
    return FUNC3(buf, content)==0;
}