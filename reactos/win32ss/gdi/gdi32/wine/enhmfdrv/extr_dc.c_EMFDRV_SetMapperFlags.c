
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int emr ;
struct TYPE_4__ {int nSize; int iType; } ;
struct TYPE_3__ {TYPE_2__ emr; int dwFlags; } ;
typedef int PHYSDEV ;
typedef TYPE_1__ EMRSETMAPPERFLAGS ;
typedef int DWORD ;


 scalar_t__ EMFDRV_WriteRecord (int ,TYPE_2__*) ;
 int EMR_SETMAPPERFLAGS ;
 int GDI_ERROR ;

DWORD EMFDRV_SetMapperFlags( PHYSDEV dev, DWORD flags )
{
    EMRSETMAPPERFLAGS emr;

    emr.emr.iType = EMR_SETMAPPERFLAGS;
    emr.emr.nSize = sizeof(emr);
    emr.dwFlags = flags;

    return EMFDRV_WriteRecord( dev, &emr.emr ) ? flags : GDI_ERROR;
}
