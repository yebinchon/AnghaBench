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
typedef  scalar_t__ WORD ;
typedef  scalar_t__ DWORD ;
typedef  void BYTE ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static void *FUNC2( void *ttf, DWORD size, DWORD tag )
{
    WORD i, num_tables = FUNC1(*((WORD *)ttf + 2));
    DWORD *table = (DWORD *)ttf + 3;

    for (i = 0; i < num_tables; i++)
    {
        if (table[0] == tag)
            return (BYTE *)ttf + FUNC0(table[2]);
        table += 4;
    }
    return NULL;
}