#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void* y; void* x; } ;
typedef  TYPE_1__ POINT ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__,TYPE_1__) ; 
 void* FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  TAG_BEZIER ; 

__attribute__((used)) static void FUNC5( POINT *Points, POINT **PtsOut, INT *dwOut,
				INT *nPtsOut, INT level )
{
    if(*nPtsOut == *dwOut) {
        *dwOut *= 2;
        *PtsOut = FUNC3(PagedPool, *dwOut * sizeof(POINT), TAG_BEZIER);
        if (*PtsOut == NULL)
        {
            /// \todo FIXME!
            FUNC4(FALSE);
            return;
        }
    }

    if(!level || FUNC2(level, Points)) {
        if(*nPtsOut == 0) {
            (*PtsOut)[0].x = FUNC1(Points[0].x);
            (*PtsOut)[0].y = FUNC1(Points[0].y);
            *nPtsOut = 1;
        }
	(*PtsOut)[*nPtsOut].x = FUNC1(Points[3].x);
        (*PtsOut)[*nPtsOut].y = FUNC1(Points[3].y);
        (*nPtsOut) ++;
    } else {
        POINT Points2[4]; /* for the second recursive call */
        Points2[3]=Points[3];
        FUNC0(Points2[2], Points[2], Points[3]);
        FUNC0(Points2[0], Points[1], Points[2]);
        FUNC0(Points2[1],Points2[0],Points2[2]);

        FUNC0(Points[1], Points[0],  Points[1]);
        FUNC0(Points[2], Points[1], Points2[0]);
        FUNC0(Points[3], Points[2], Points2[1]);

        Points2[0]=Points[3];

        /* do the two halves */
        FUNC5(Points, PtsOut, dwOut, nPtsOut, level-1);
        FUNC5(Points2, PtsOut, dwOut, nPtsOut, level-1);
    }
}