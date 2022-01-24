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
typedef  int WORD ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int CDFRAMES_PERSEC ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC4(DWORD d1, DWORD d2)
{
    WORD c, m, s, f;
    f = FUNC1(d1)  + FUNC1(d2);
    c = f / CDFRAMES_PERSEC;
    f = f % CDFRAMES_PERSEC;
    s = FUNC3(d1) + FUNC3(d2) + c;
    c = s / 60;
    s = s % 60;
    m = FUNC2(d1) + FUNC2(d2) + c; /* may be > 60 */
    return FUNC0(m,s,f);
}