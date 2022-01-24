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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,scalar_t__*,int /*<<< orphan*/ *) ; 

int FUNC1( const WCHAR *ver1, const WCHAR *ver2 )
{
    DWORD ms1, ms2;

    FUNC0( ver1, &ms1, NULL );
    FUNC0( ver2, &ms2, NULL );

    if (ms1 > ms2) return 1;
    else if (ms1 < ms2) return -1;
    return 0;
}