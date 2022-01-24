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
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int DWORDLONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 

__attribute__((used)) static void FUNC1(DWORDLONG Version, LPSTR lpszVerString)
{
    WORD a, b, c, d;

    a = (WORD)(Version >> 48);
    b = (WORD)((Version >> 32) & 0xffff);
    c = (WORD)((Version >> 16) & 0xffff);
    d = (WORD)(Version & 0xffff);

    FUNC0(lpszVerString, "%d.%d.%d.%d", a, b, c, d);
}