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
typedef  int UINT ;
typedef  scalar_t__ MSIHANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int ERROR_SUCCESS ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (scalar_t__,int,int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

__attribute__((used)) static void FUNC7(void)
{
    MSIHANDLE rec;
    CHAR buf[MAX_PATH];
    DWORD sz;
    UINT r;

    rec = FUNC1(2);
    FUNC6(rec != 0, "Expected a valid handle\n");

    sz = MAX_PATH;
    r = FUNC2(rec, 1, NULL, &sz);
    FUNC6(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n",r);
    FUNC6(sz == 0, "Expected 0, got %d\n",sz);

    sz = MAX_PATH;
    FUNC5(buf, "apple");
    r = FUNC2(rec, 1, buf, &sz);
    FUNC6(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC6(!FUNC4(buf, ""), "Expected \"\", got \"%s\"\n", buf);
    FUNC6(sz == 0, "Expected 0, got %d\n", sz);

    sz = MAX_PATH;
    FUNC5(buf, "apple");
    r = FUNC2(rec, 10, buf, &sz);
    FUNC6(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC6(!FUNC4(buf, ""), "Expected \"\", got \"%s\"\n", buf);
    FUNC6(sz == 0, "Expected 0, got %d\n", sz);

    FUNC0(rec);

    rec = FUNC1(1);
    FUNC6(rec != 0, "Expected a valid handle\n");

    r = FUNC3(rec, 1, 5);
    FUNC6(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    sz = MAX_PATH;
    r = FUNC2(rec, 1, NULL, &sz);
    FUNC6(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n",r);
    FUNC6(sz == 1, "Expected 1, got %d\n",sz);

    sz = MAX_PATH;
    FUNC5(buf, "apple");
    r = FUNC2(rec, 1, buf, &sz);
    FUNC6(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC6(!FUNC4(buf, "5"), "Expected \"5\", got \"%s\"\n", buf);
    FUNC6(sz == 1, "Expected 1, got %d\n", sz);

    r = FUNC3(rec, 1, -5);
    FUNC6(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    sz = MAX_PATH;
    FUNC5(buf, "apple");
    r = FUNC2(rec, 1, buf, &sz);
    FUNC6(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC6(!FUNC4(buf, "-5"), "Expected \"-5\", got \"%s\"\n", buf);
    FUNC6(sz == 2, "Expected 2, got %d\n", sz);

    FUNC0(rec);
}