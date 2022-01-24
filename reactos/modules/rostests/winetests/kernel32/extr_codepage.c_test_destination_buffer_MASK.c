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
typedef  char* LPSTR ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  foobarW ; 
 int /*<<< orphan*/  FUNC6 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int,scalar_t__,...) ; 

__attribute__((used)) static void FUNC8(void)
{
    LPSTR   buffer;
    INT     maxsize;
    INT     needed;
    INT     len;

    FUNC4(0xdeadbeef);
    needed = FUNC5(CP_ACP, 0, foobarW, -1, NULL, 0, NULL, NULL);
    FUNC7( (needed > 0), "returned %d with %u (expected '> 0')\n",
        needed, FUNC0());

    maxsize = needed*2;
    buffer = FUNC2(FUNC1(), 0, maxsize);
    if (buffer == NULL) return;

    maxsize--;
    FUNC6(buffer, 'x', maxsize);
    buffer[maxsize] = '\0';
    FUNC4(0xdeadbeef);
    len = FUNC5(CP_ACP, 0, foobarW, -1, buffer, needed+1, NULL, NULL);
    FUNC7( (len > 0), "returned %d with %u and '%s' (expected '> 0')\n",
        len, FUNC0(), buffer);

    FUNC6(buffer, 'x', maxsize);
    buffer[maxsize] = '\0';
    FUNC4(0xdeadbeef);
    len = FUNC5(CP_ACP, 0, foobarW, -1, buffer, needed, NULL, NULL);
    FUNC7( (len > 0), "returned %d with %u and '%s' (expected '> 0')\n",
        len, FUNC0(), buffer);

    FUNC6(buffer, 'x', maxsize);
    buffer[maxsize] = '\0';
    FUNC4(0xdeadbeef);
    len = FUNC5(CP_ACP, 0, foobarW, -1, buffer, needed-1, NULL, NULL);
    FUNC7( !len && (FUNC0() == ERROR_INSUFFICIENT_BUFFER),
        "returned %d with %u and '%s' (expected '0' with "
        "ERROR_INSUFFICIENT_BUFFER)\n", len, FUNC0(), buffer);

    FUNC6(buffer, 'x', maxsize);
    buffer[maxsize] = '\0';
    FUNC4(0xdeadbeef);
    len = FUNC5(CP_ACP, 0, foobarW, -1, buffer, 1, NULL, NULL);
    FUNC7( !len && (FUNC0() == ERROR_INSUFFICIENT_BUFFER),
        "returned %d with %u and '%s' (expected '0' with "
        "ERROR_INSUFFICIENT_BUFFER)\n", len, FUNC0(), buffer);

    FUNC4(0xdeadbeef);
    len = FUNC5(CP_ACP, 0, foobarW, -1, buffer, 0, NULL, NULL);
    FUNC7( (len > 0), "returned %d with %u (expected '> 0')\n",
        len, FUNC0());

    FUNC4(0xdeadbeef);
    len = FUNC5(CP_ACP, 0, foobarW, -1, NULL, needed, NULL, NULL);
    FUNC7( !len && (FUNC0() == ERROR_INVALID_PARAMETER),
        "returned %d with %u (expected '0' with "
        "ERROR_INVALID_PARAMETER)\n", len, FUNC0());

    FUNC3(FUNC1(), 0, buffer);
}