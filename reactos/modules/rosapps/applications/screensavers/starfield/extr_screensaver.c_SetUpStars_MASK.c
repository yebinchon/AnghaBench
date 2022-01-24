#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ m_nXPos; scalar_t__ m_nYPos; int m_nZPos; int m_nOldX; int m_nOldY; } ;
typedef  TYPE_1__ STAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int MAX_STARS ; 
 int MB_ICONWARNING ; 
 int MB_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int m_nTotStars ; 
 scalar_t__ FUNC4 (int) ; 
 TYPE_1__* stars ; 

BOOL FUNC5 (int nNumStars)
{
    int i;
    if (nNumStars > MAX_STARS)
    {
        FUNC0 (0,
            FUNC2("Too many stars! Aborting!"),
            FUNC2("Error"),
            MB_OK | MB_ICONWARNING);
        return FALSE;
    }

    if (stars)
        FUNC3 (stars);

    m_nTotStars = nNumStars;

    stars = (STAR*)FUNC4(nNumStars * sizeof(STAR));

    if (!stars)
    {
        FUNC0 (0,
            FUNC2("Unable to allocate memory! Aborting!"),
            FUNC2("Error"),
            MB_OK | MB_ICONWARNING);
        return FALSE;
    }

    for (i = 0; i < m_nTotStars; i++)
    {
        do
        {
            stars[i].m_nXPos = FUNC1 (-320, 320);
            stars[i].m_nYPos = FUNC1 (-200, 200);
            stars[i].m_nZPos = i+1;
            stars[i].m_nOldX = -1;
            stars[i].m_nOldY = -1;
        } while ((stars[i].m_nXPos == 0) || (stars[i].m_nYPos == 0));
    }
    return TRUE;
}