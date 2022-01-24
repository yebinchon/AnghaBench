#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ wYear; scalar_t__ wMonth; scalar_t__ wDay; scalar_t__ wHour; scalar_t__ wMinute; scalar_t__ wSecond; scalar_t__ wMilliseconds; } ;
typedef  TYPE_1__ SYSTEMTIME ;
typedef  int /*<<< orphan*/  FILETIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*) ; 

__attribute__((used)) static void FUNC6(const SYSTEMTIME *expected, const FILETIME *got)
{
    SYSTEMTIME st;

    FUNC0(got, &st);
    FUNC3((expected->wYear == st.wYear &&
     expected->wMonth == st.wMonth &&
     expected->wDay == st.wDay &&
     expected->wHour == st.wHour &&
     expected->wMinute == st.wMinute &&
     expected->wSecond == st.wSecond &&
     FUNC1(expected->wMilliseconds - st.wMilliseconds) <= 1) ||
     /* Some Windows systems only seem to be accurate in their time decoding to
      * within about an hour.
      */
     FUNC2(expected->wYear == st.wYear &&
     expected->wMonth == st.wMonth &&
     expected->wDay == st.wDay &&
     FUNC1(expected->wHour - st.wHour) <= 1),
     "Got unexpected value for time decoding:\nexpected %s, got %s\n",
     FUNC5(expected), FUNC4(got));
}