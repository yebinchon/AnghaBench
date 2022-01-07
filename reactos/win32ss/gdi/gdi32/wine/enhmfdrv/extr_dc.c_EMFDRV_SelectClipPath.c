
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
typedef int INT ;
typedef TYPE_1__ EMRSELECTCLIPPATH ;
typedef int BOOL ;


 int EMFDRV_WriteRecord (int ,TYPE_2__*) ;
 int EMR_SELECTCLIPPATH ;
 int FALSE ;
 int TRUE ;

BOOL EMFDRV_SelectClipPath( PHYSDEV dev, INT iMode )
{

    EMRSELECTCLIPPATH emr;



    emr.emr.iType = EMR_SELECTCLIPPATH;
    emr.emr.nSize = sizeof(emr);
    emr.iMode = iMode;

    if (!EMFDRV_WriteRecord( dev, &emr.emr )) return FALSE;







    return TRUE;
}
