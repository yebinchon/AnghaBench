
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int XFORM ;
struct TYPE_9__ {int right; int bottom; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_8__ {int right; int bottom; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_6__ {int dwSize; int nCount; int nRgnSize; TYPE_4__ rcBound; int iType; } ;
struct TYPE_7__ {TYPE_1__ rdh; int Buffer; } ;
typedef int RgnDataBuffer ;
typedef int RGNDATAHEADER ;
typedef TYPE_2__ RGNDATA ;
typedef int RECT ;
typedef TYPE_3__* PRECT ;
typedef int * HRGN ;
typedef float FLOAT ;
typedef int CHAR ;


 scalar_t__ COMPLEXREGION ;
 int CheckRect (int *,int ,int,int,int) ;
 int CheckRectRegion (int *,int,int,int,int) ;
 int * ExtCreateRegion (int *,int,TYPE_2__ const*) ;
 scalar_t__ GetRgnBox (int *,int *) ;
 int InitXFORM (int *,int,int,int,int,int,int) ;
 int RDH_RECTANGLES ;
 int SetRectEmpty (TYPE_4__*) ;
 int cosf (float) ;
 int ok (int,char*) ;
 int sinf (float) ;

void Test_ExtCreateRegion_Transform()
{
    struct
    {
        RGNDATA rgndata;
        CHAR data[sizeof(RECT) - 1];
    } RgnDataBuffer;
    PRECT prect = (PRECT)&RgnDataBuffer.rgndata.Buffer;
    const RGNDATA *pRgnData = (const RGNDATA *)&RgnDataBuffer;
    XFORM xform;
    FLOAT eAngle;
    HRGN hrgn;
    RECT rcTemp;

    RgnDataBuffer.rgndata.rdh.dwSize = sizeof(RGNDATAHEADER);
    RgnDataBuffer.rgndata.rdh.iType = RDH_RECTANGLES;
    RgnDataBuffer.rgndata.rdh.nCount = 1;
    RgnDataBuffer.rgndata.rdh.nRgnSize = sizeof(RGNDATAHEADER) + sizeof(RECT);
    RgnDataBuffer.rgndata.rdh.rcBound.left = 0;
    RgnDataBuffer.rgndata.rdh.rcBound.top = 0;
    RgnDataBuffer.rgndata.rdh.rcBound.right = 10;
    RgnDataBuffer.rgndata.rdh.rcBound.bottom = 10;
    prect->left = 0;
    prect->top = 0;
    prect->right = 10;
    prect->bottom = 10;

    SetRectEmpty(&RgnDataBuffer.rgndata.rdh.rcBound);

    hrgn = ExtCreateRegion(((void*)0), sizeof(RgnDataBuffer), pRgnData);
    ok(hrgn != ((void*)0), "ExtCreateRegion failed with without transform\n");
    CheckRectRegion(hrgn, 0, 0, 10, 10);

    InitXFORM(&xform, 1., 0., 0., 1., 0., 0.);
    hrgn = ExtCreateRegion(&xform, sizeof(RgnDataBuffer), pRgnData);
    ok(hrgn != ((void*)0), "ExtCreateRegion failed with identity transform\n");
    CheckRectRegion(hrgn, 0, 0, 10, 10);

    InitXFORM(&xform, 1., 0., 0., 1., 10., 10.);
    hrgn = ExtCreateRegion(&xform, sizeof(RgnDataBuffer), pRgnData);
    ok(hrgn != ((void*)0), "ExtCreateRegion failed with offset transform\n");
    CheckRectRegion(hrgn, 10, 10, 20, 20);

    InitXFORM(&xform, 2.5, 0., 0., 1.5, 0., 0.);
    hrgn = ExtCreateRegion(&xform, sizeof(RgnDataBuffer), pRgnData);
    ok(hrgn != ((void*)0), "ExtCreateRegion failed with scaling transform\n");
    CheckRectRegion(hrgn, 0, 0, 25, 15);

    InitXFORM(&xform, 2.5, 0., 0., 1.5, 20., 40.);
    hrgn = ExtCreateRegion(&xform, sizeof(RgnDataBuffer), pRgnData);
    ok(hrgn != ((void*)0), "ExtCreateRegion failed with scaling+offset transform\n");
    CheckRectRegion(hrgn, 20, 40, 45, 55);

    InitXFORM(&xform, 1., 10., 0., 1., 0., 0.);
    hrgn = ExtCreateRegion(&xform, sizeof(RgnDataBuffer), pRgnData);
    ok(hrgn != ((void*)0), "ExtCreateRegion failed with shearing transform\n");
    ok(GetRgnBox(hrgn, &rcTemp) == COMPLEXREGION, "not a complex region\n");
    CheckRect(&rcTemp, 0, 1, 10, 101);

    eAngle = 23.6f;
    InitXFORM(&xform, cosf(eAngle), -sinf(eAngle), sinf(eAngle), cosf(eAngle), 10., 10.);
    hrgn = ExtCreateRegion(&xform, sizeof(RgnDataBuffer), pRgnData);
    ok(hrgn != ((void*)0), "ExtCreateRegion failed with rotating transform\n");
    CheckRectRegion(hrgn, 0, 10, 10, 20);

}
