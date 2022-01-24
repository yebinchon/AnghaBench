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
typedef  int BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 

int FUNC2(int level, int *pIndexs, const BYTE* plevel, int cch, BOOL fReverse)
{
    int ich = 0;

    /* true as soon as first odd level encountered */
    fReverse = fReverse || FUNC0(level);

    for (; ich < cch; ich++)
    {
        if (plevel[ich] < level)
        {
            break;
        }
        else if (plevel[ich] > level)
        {
            ich += FUNC2(level + 1, pIndexs + ich, plevel + ich,
                cch - ich, fReverse) - 1;
        }
    }
    if (fReverse)
    {
        FUNC1(pIndexs, ich);
    }
    return ich;
}