#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int wMonth; int wDay; int wYear; int wHour; int wMinute; int wSecond; int wMilliseconds; } ;
typedef  TYPE_1__ SYSTEMTIME ;
typedef  int /*<<< orphan*/  FILETIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int,int,int,int,int,int) ; 

__attribute__((used)) static const char *FUNC2(const FILETIME *ft)
{
    static char buf[64];
    SYSTEMTIME st;

    FUNC0(ft, &st);
    FUNC1(buf, "%02d-%02d-%04d %02d:%02d:%02d.%03d", st.wMonth, st.wDay,
     st.wYear, st.wHour, st.wMinute, st.wSecond, st.wMilliseconds);
    return buf;
}