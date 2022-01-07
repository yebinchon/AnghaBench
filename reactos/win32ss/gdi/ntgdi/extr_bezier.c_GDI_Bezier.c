
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {void* y; void* x; } ;
typedef TYPE_1__ POINT ;
typedef int INT ;


 int BEZIERMAXDEPTH ;
 void* BEZIERSHIFTUP (void*) ;
 int BEZIER_INITBUFSIZE ;
 int DPRINT (char*,int) ;
 int DPRINT1 (char*,int) ;
 TYPE_1__* ExAllocatePoolWithTag (int ,int,int ) ;
 int GDI_InternalBezier (TYPE_1__*,TYPE_1__**,int*,int*,int ) ;
 int PagedPool ;
 int TAG_BEZIER ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;

POINT *GDI_Bezier( const POINT *Points, INT count, INT *nPtsOut )
{
    POINT *out;
    INT Bezier, dwOut = BEZIER_INITBUFSIZE, i;

    if (count == 1 || (count - 1) % 3 != 0) {
        DPRINT1("Invalid no. of points %d\n", count);
 return ((void*)0);
    }
    *nPtsOut = 0;

    out = ExAllocatePoolWithTag(PagedPool, dwOut * sizeof(POINT), TAG_BEZIER);
    if (!out) return ((void*)0);

    for(Bezier = 0; Bezier < (count-1)/3; Bezier++) {
 POINT ptBuf[4];
 memcpy(ptBuf, Points + Bezier * 3, sizeof(POINT) * 4);
 for(i = 0; i < 4; i++) {
     ptBuf[i].x = BEZIERSHIFTUP(ptBuf[i].x);
     ptBuf[i].y = BEZIERSHIFTUP(ptBuf[i].y);
 }
        GDI_InternalBezier( ptBuf, &out, &dwOut, nPtsOut, BEZIERMAXDEPTH );
    }
    DPRINT("Produced %d points\n", *nPtsOut);
    return out;
}
