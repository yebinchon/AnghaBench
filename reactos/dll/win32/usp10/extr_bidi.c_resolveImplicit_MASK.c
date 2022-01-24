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

/* Variables and functions */
 int const AN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int const BN ; 
 int const EN ; 
 int const L ; 
 int const R ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(const WORD * pcls, WORD *plevel, int sos, int eos)
{
    int i;

    /* I1/2 */
    for (i = sos; i <= eos; i++)
    {
        if (pcls[i] == BN)
            continue;

        FUNC0(pcls[i] > 0); /* "No Neutrals allowed to survive here." */
        FUNC0(pcls[i] < 5); /* "Out of range." */

        if (FUNC1(plevel[i]) && (pcls[i] == L || pcls[i] == EN || pcls [i] == AN))
            plevel[i]++;
        else if (!FUNC1(plevel[i]) && pcls[i] == R)
            plevel[i]++;
        else if (!FUNC1(plevel[i]) && (pcls[i] == EN || pcls [i] == AN))
            plevel[i]+=2;
    }
}