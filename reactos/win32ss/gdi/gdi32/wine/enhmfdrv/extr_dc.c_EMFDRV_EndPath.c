
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int emr ;
struct TYPE_4__ {int nSize; int iType; } ;
struct TYPE_3__ {TYPE_2__ emr; } ;
typedef int PHYSDEV ;
typedef TYPE_1__ EMRENDPATH ;
typedef int BOOL ;


 int EMFDRV_WriteRecord (int ,TYPE_2__*) ;
 int EMR_ENDPATH ;
 int FALSE ;

BOOL EMFDRV_EndPath( PHYSDEV dev )
{
    EMRENDPATH emr;

    emr.emr.iType = EMR_ENDPATH;
    emr.emr.nSize = sizeof(emr);

    EMFDRV_WriteRecord( dev, &emr.emr );
    return FALSE;
}
