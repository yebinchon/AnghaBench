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
typedef  int DWORD ;
typedef  char CHAR ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (char*,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,scalar_t__,...) ; 

__attribute__((used)) static void FUNC5(void)
{
    CHAR    buffer[MAX_PATH + 4];
    DWORD   res;
    DWORD   total;

    FUNC2(0xdeadbeef);
    res = FUNC1(NULL, 0);
    /* res includes the terminating Zero */
    FUNC4(res > 0, "returned %d with %d (expected '>0')\n", res, FUNC0());

    total = res;
    /* this crashes on XP */
    if (0)
        FUNC1(NULL, total);

    FUNC2(0xdeadbeef);
    res = FUNC1(NULL, total-1);
    /* 95+NT: total (includes the terminating Zero)
       98+ME: 0 with ERROR_INVALID_PARAMETER */
    FUNC4( (res == total) || (!res && (FUNC0() == ERROR_INVALID_PARAMETER)),
        "returned %d with %d (expected '%d' or: '0' with "
        "ERROR_INVALID_PARAMETER)\n", res, FUNC0(), total);

    if (total > MAX_PATH) return;

    buffer[0] = '\0';
    FUNC2(0xdeadbeef);
    res = FUNC1(buffer, total);
    /* res does not include the terminating Zero */
    FUNC4( (res == (total-1)) && (buffer[0]),
        "returned %d with %d and '%s' (expected '%d' and a string)\n",
        res, FUNC0(), buffer, total-1);

    buffer[0] = '\0';
    FUNC2(0xdeadbeef);
    res = FUNC1(buffer, total + 1);
    /* res does not include the terminating Zero */
    FUNC4( (res == (total-1)) && (buffer[0]),
        "returned %d with %d and '%s' (expected '%d' and a string)\n",
        res, FUNC0(), buffer, total-1);

    FUNC3(buffer, '#', total + 1);
    buffer[total + 2] = '\0';
    FUNC2(0xdeadbeef);
    res = FUNC1(buffer, total-1);
    /* res includes the terminating Zero) */
    FUNC4( res == total, "returned %d with %d and '%s' (expected '%d')\n",
        res, FUNC0(), buffer, total);

    FUNC3(buffer, '#', total + 1);
    buffer[total + 2] = '\0';
    FUNC2(0xdeadbeef);
    res = FUNC1(buffer, total-2);
    /* res includes the terminating Zero) */
    FUNC4( res == total, "returned %d with %d and '%s' (expected '%d')\n",
        res, FUNC0(), buffer, total);
}