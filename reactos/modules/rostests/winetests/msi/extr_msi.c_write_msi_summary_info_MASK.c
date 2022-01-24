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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  int /*<<< orphan*/  INT ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  PID_PAGECOUNT ; 
 int /*<<< orphan*/  PID_REVNUMBER ; 
 int /*<<< orphan*/  PID_TEMPLATE ; 
 int /*<<< orphan*/  PID_TITLE ; 
 int /*<<< orphan*/  PID_WORDCOUNT ; 
 int /*<<< orphan*/  VT_I4 ; 
 int /*<<< orphan*/  VT_LPSTR ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(MSIHANDLE db, INT version, INT wordcount, const char *template)
{
    MSIHANDLE summary;
    UINT r;

    r = FUNC1(db, NULL, 5, &summary);
    FUNC4(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    r = FUNC3(summary, PID_TEMPLATE, VT_LPSTR, 0, NULL, template);
    FUNC4(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    r = FUNC3(summary, PID_REVNUMBER, VT_LPSTR, 0, NULL,
                                   "{004757CA-5092-49C2-AD20-28E1CE0DF5F2}");
    FUNC4(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    r = FUNC3(summary, PID_PAGECOUNT, VT_I4, version, NULL, NULL);
    FUNC4(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    r = FUNC3(summary, PID_WORDCOUNT, VT_I4, wordcount, NULL, NULL);
    FUNC4(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    r = FUNC3(summary, PID_TITLE, VT_LPSTR, 0, NULL, "MSITEST");
    FUNC4(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    /* write the summary changes back to the stream */
    r = FUNC2(summary);
    FUNC4(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    FUNC0(summary);
}