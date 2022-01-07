
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int emr ;
struct TYPE_6__ {int nSize; int iType; } ;
struct TYPE_4__ {void* y; void* x; } ;
struct TYPE_5__ {TYPE_3__ emr; void* eSweepAngle; void* eStartAngle; int nRadius; TYPE_1__ ptlCenter; } ;
typedef int PHYSDEV ;
typedef void* INT ;
typedef void* FLOAT ;
typedef TYPE_2__ EMRANGLEARC ;
typedef int DWORD ;
typedef int BOOL ;


 int EMFDRV_WriteRecord (int ,TYPE_3__*) ;
 int EMR_ANGLEARC ;

BOOL EMFDRV_AngleArc( PHYSDEV dev, INT x, INT y, DWORD radius, FLOAT start, FLOAT sweep )
{
    EMRANGLEARC emr;

    emr.emr.iType = EMR_ANGLEARC;
    emr.emr.nSize = sizeof( emr );
    emr.ptlCenter.x = x;
    emr.ptlCenter.y = y;
    emr.nRadius = radius;
    emr.eStartAngle = start;
    emr.eSweepAngle = sweep;

    return EMFDRV_WriteRecord( dev, &emr.emr );
}
