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
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  unsigned int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  bidi_direction_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(LPCWSTR lpString, WORD *chartype, DWORD uCount)
{
    unsigned i;

    for (i = 0; i < uCount; ++i)
        chartype[i] = FUNC0( bidi_direction_table, lpString[i] );
}