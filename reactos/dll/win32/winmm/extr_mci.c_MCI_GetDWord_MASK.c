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
typedef  int* LPWSTR ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int*,int**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static	BOOL		FUNC1(DWORD_PTR *data, LPWSTR* ptr)
{
    DWORD	val;
    LPWSTR	ret;

    val = FUNC0(*ptr, &ret, 0);

    switch (*ret) {
    case '\0':	break;
    case ' ':	ret++; break;
    default:	return FALSE;
    }

    *data |= val;
    *ptr = ret;
    return TRUE;
}