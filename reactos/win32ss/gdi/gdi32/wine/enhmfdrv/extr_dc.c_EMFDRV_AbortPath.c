
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
typedef TYPE_1__ EMRABORTPATH ;
typedef int BOOL ;


 int EMFDRV_WriteRecord (int ,TYPE_2__*) ;
 int EMR_ABORTPATH ;

BOOL EMFDRV_AbortPath( PHYSDEV dev )
{
    EMRABORTPATH emr;

    emr.emr.iType = EMR_ABORTPATH;
    emr.emr.nSize = sizeof(emr);

    return EMFDRV_WriteRecord( dev, &emr.emr );
}
