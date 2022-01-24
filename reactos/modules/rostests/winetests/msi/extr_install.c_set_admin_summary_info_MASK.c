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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSIDBOPEN_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PID_WORDCOUNT ; 
 int /*<<< orphan*/  VT_I4 ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(const WCHAR *name)
{
    MSIHANDLE db, summary;
    UINT r;

    r = FUNC3(name, MSIDBOPEN_DIRECT, &db);
    FUNC6(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    r = FUNC2(db, NULL, 1, &summary);
    FUNC6(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    r = FUNC5(summary, PID_WORDCOUNT, VT_I4, 5, NULL, NULL);
    FUNC6(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    /* write the summary changes back to the stream */
    r = FUNC4(summary);
    FUNC6(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    FUNC0(summary);

    r = FUNC1(db);
    FUNC6(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    FUNC0(db);
}