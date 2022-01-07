
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int emr ;
struct TYPE_4__ {int nSize; int iType; } ;
struct TYPE_3__ {TYPE_2__ emr; int iArcDirection; } ;
typedef int PHYSDEV ;
typedef int INT ;
typedef TYPE_1__ EMRSETARCDIRECTION ;


 scalar_t__ EMFDRV_WriteRecord (int ,TYPE_2__*) ;
 int EMR_SETARCDIRECTION ;

INT EMFDRV_SetArcDirection(PHYSDEV dev, INT arcDirection)
{
    EMRSETARCDIRECTION emr;

    emr.emr.iType = EMR_SETARCDIRECTION;
    emr.emr.nSize = sizeof(emr);
    emr.iArcDirection = arcDirection;
    return EMFDRV_WriteRecord(dev, &emr.emr) ? arcDirection : 0;
}
