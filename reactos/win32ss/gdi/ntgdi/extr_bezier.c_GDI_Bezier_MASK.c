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
 int /*<<< orphan*/  BEZIERMAXDEPTH ; 
 void* FUNC0 (void*) ; 
 int BEZIER_INITBUFSIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__**,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  TAG_BEZIER ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__ const*,int) ; 

POINT *FUNC6( const POINT *Points, INT count, INT *nPtsOut )
{
    POINT *out;
    INT Bezier, dwOut = BEZIER_INITBUFSIZE, i;

    if (count == 1 || (count - 1) % 3 != 0) {
        FUNC2("Invalid no. of points %d\n", count);
	return NULL;
    }
    *nPtsOut = 0;

    out = FUNC3(PagedPool, dwOut * sizeof(POINT), TAG_BEZIER);
    if (!out) return NULL;

    for(Bezier = 0; Bezier < (count-1)/3; Bezier++) {
	POINT ptBuf[4];
	FUNC5(ptBuf, Points + Bezier * 3, sizeof(POINT) * 4);
	for(i = 0; i < 4; i++) {
	    ptBuf[i].x = FUNC0(ptBuf[i].x);
	    ptBuf[i].y = FUNC0(ptBuf[i].y);
	}
        FUNC4( ptBuf, &out, &dwOut, nPtsOut, BEZIERMAXDEPTH );
    }
    FUNC1("Produced %d points\n", *nPtsOut);
    return out;
}