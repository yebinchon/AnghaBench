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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__,char*) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(const char *filename, const char *text)
{
    char buffer[200];
    HANDLE file;
    DWORD size;

    file = FUNC1(filename, GENERIC_READ, 0, NULL, OPEN_EXISTING, 0, NULL);
    FUNC2(file, buffer, sizeof(buffer), &size, NULL);
    FUNC4(size == FUNC5(text) && !FUNC3(buffer, text, size), "got %.*s\n", size, buffer);
    FUNC0(file);
}