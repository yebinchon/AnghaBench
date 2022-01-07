
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int emr ;
struct TYPE_4__ {int nSize; int iType; } ;
struct TYPE_3__ {TYPE_2__ emr; int iMode; } ;
typedef int PHYSDEV ;
typedef TYPE_1__ EMRSETLAYOUT ;
typedef int DWORD ;


 scalar_t__ EMFDRV_WriteRecord (int ,TYPE_2__*) ;
 int EMR_SETLAYOUT ;
 int GDI_ERROR ;

DWORD EMFDRV_SetLayout( PHYSDEV dev, DWORD layout )
{
    EMRSETLAYOUT emr;

    emr.emr.iType = EMR_SETLAYOUT;
    emr.emr.nSize = sizeof(emr);
    emr.iMode = layout;
    return EMFDRV_WriteRecord( dev, &emr.emr ) ? layout : GDI_ERROR;
}
