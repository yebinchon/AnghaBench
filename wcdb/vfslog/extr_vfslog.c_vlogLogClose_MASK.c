#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_mutex ;
struct TYPE_6__ {scalar_t__ nRef; scalar_t__ zFilename; int /*<<< orphan*/  gzMutex; int /*<<< orphan*/  gzOut; int /*<<< orphan*/  tmpOut; TYPE_1__** ppPrev; TYPE_1__* pNext; } ;
typedef  TYPE_2__ VLogLog ;
struct TYPE_5__ {struct TYPE_5__** ppPrev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_MUTEX_STATIC_MASTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(VLogLog *p)
{
    if (p) {
        sqlite3_mutex *pMutex;
        p->nRef--;
        if (p->nRef > 0 || p->zFilename == 0)
            return;
        pMutex = FUNC3(SQLITE_MUTEX_STATIC_MASTER);
        FUNC4(pMutex);
        *p->ppPrev = p->pNext;
        if (p->pNext)
            p->pNext->ppPrev = p->ppPrev;
        FUNC6(pMutex);

        FUNC0(p->tmpOut);
        FUNC1(p->gzOut);
        FUNC5(p->gzMutex);
        FUNC2(p);
    }
}