
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int emr ;
struct TYPE_7__ {int nSize; int iType; } ;
struct TYPE_6__ {scalar_t__ restoring; } ;
struct TYPE_5__ {TYPE_4__ emr; int crColor; } ;
typedef int PHYSDEV ;
typedef TYPE_1__ EMRSETBKCOLOR ;
typedef TYPE_2__ EMFDRV_PDEVICE ;
typedef int COLORREF ;


 int CLR_INVALID ;
 scalar_t__ EMFDRV_WriteRecord (int ,TYPE_4__*) ;
 int EMR_SETBKCOLOR ;
 TYPE_2__* get_emf_physdev (int ) ;

COLORREF EMFDRV_SetBkColor( PHYSDEV dev, COLORREF color )
{
    EMRSETBKCOLOR emr;
    EMFDRV_PDEVICE *physDev = get_emf_physdev( dev );

    if (physDev->restoring) return color;

    emr.emr.iType = EMR_SETBKCOLOR;
    emr.emr.nSize = sizeof(emr);
    emr.crColor = color;
    return EMFDRV_WriteRecord( dev, &emr.emr ) ? color : CLR_INVALID;
}
