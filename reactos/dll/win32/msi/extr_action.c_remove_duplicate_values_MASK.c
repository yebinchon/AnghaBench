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
typedef  unsigned int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static DWORD FUNC2( WCHAR **old, DWORD old_count,
                                      WCHAR **new, DWORD new_count )
{
    DWORD ret = old_count;
    unsigned int i, j, k;

    for (i = 0; i < new_count; i++)
    {
        for (j = 0; j < old_count; j++)
        {
            if (old[j] && !FUNC1( new[i], old[j] ))
            {
                FUNC0( old[j] );
                for (k = j; k < old_count - 1; k++) { old[k] = old[k + 1]; }
                old[k] = NULL;
                ret--;
            }
        }
    }
    return ret;
}