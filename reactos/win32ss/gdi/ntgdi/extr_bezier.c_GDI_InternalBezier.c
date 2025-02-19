
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {void* y; void* x; } ;
typedef TYPE_1__ POINT ;
typedef int INT ;


 int BEZIERMIDDLE (TYPE_1__,TYPE_1__,TYPE_1__) ;
 void* BEZIERSHIFTDOWN (void*) ;
 scalar_t__ BezierCheck (int,TYPE_1__*) ;
 TYPE_1__* ExAllocatePoolWithTag (int ,int,int ) ;
 int FALSE ;
 int NT_ASSERT (int ) ;
 int PagedPool ;
 int TAG_BEZIER ;

__attribute__((used)) static void GDI_InternalBezier( POINT *Points, POINT **PtsOut, INT *dwOut,
    INT *nPtsOut, INT level )
{
    if(*nPtsOut == *dwOut) {
        *dwOut *= 2;
        *PtsOut = ExAllocatePoolWithTag(PagedPool, *dwOut * sizeof(POINT), TAG_BEZIER);
        if (*PtsOut == ((void*)0))
        {

            NT_ASSERT(FALSE);
            return;
        }
    }

    if(!level || BezierCheck(level, Points)) {
        if(*nPtsOut == 0) {
            (*PtsOut)[0].x = BEZIERSHIFTDOWN(Points[0].x);
            (*PtsOut)[0].y = BEZIERSHIFTDOWN(Points[0].y);
            *nPtsOut = 1;
        }
 (*PtsOut)[*nPtsOut].x = BEZIERSHIFTDOWN(Points[3].x);
        (*PtsOut)[*nPtsOut].y = BEZIERSHIFTDOWN(Points[3].y);
        (*nPtsOut) ++;
    } else {
        POINT Points2[4];
        Points2[3]=Points[3];
        BEZIERMIDDLE(Points2[2], Points[2], Points[3]);
        BEZIERMIDDLE(Points2[0], Points[1], Points[2]);
        BEZIERMIDDLE(Points2[1],Points2[0],Points2[2]);

        BEZIERMIDDLE(Points[1], Points[0], Points[1]);
        BEZIERMIDDLE(Points[2], Points[1], Points2[0]);
        BEZIERMIDDLE(Points[3], Points[2], Points2[1]);

        Points2[0]=Points[3];


        GDI_InternalBezier(Points, PtsOut, dwOut, nPtsOut, level-1);
        GDI_InternalBezier(Points2, PtsOut, dwOut, nPtsOut, level-1);
    }
}
