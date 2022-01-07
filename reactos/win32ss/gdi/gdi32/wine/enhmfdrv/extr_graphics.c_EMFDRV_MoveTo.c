
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
struct TYPE_5__ {TYPE_3__ emr; TYPE_1__ ptl; } ;
typedef int PHYSDEV ;
typedef void* INT ;
typedef TYPE_2__ EMRMOVETOEX ;
typedef int BOOL ;


 int EMFDRV_WriteRecord (int ,TYPE_3__*) ;
 int EMR_MOVETOEX ;

BOOL EMFDRV_MoveTo(PHYSDEV dev, INT x, INT y)
{
    EMRMOVETOEX emr;

    emr.emr.iType = EMR_MOVETOEX;
    emr.emr.nSize = sizeof(emr);
    emr.ptl.x = x;
    emr.ptl.y = y;

    return EMFDRV_WriteRecord( dev, &emr.emr );
}
