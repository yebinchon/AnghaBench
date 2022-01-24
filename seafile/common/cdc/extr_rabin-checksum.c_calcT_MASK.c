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
typedef  int u_int64_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int* T ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int shift ; 

__attribute__((used)) static void FUNC4 (u_int64_t poly)
{
    int j = 0;
    int xshift = FUNC1 (poly) - 1;
    shift = xshift - 8;
    u_int64_t T1 = FUNC3 (0, FUNC0 (1) << xshift, poly);
    for (j = 0; j < 256; j++) {
        T[j] = FUNC2 (j, T1, poly) | ((u_int64_t) j << xshift);
    }
}