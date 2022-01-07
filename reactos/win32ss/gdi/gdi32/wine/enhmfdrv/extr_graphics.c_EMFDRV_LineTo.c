
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;


typedef int emr ;
struct TYPE_21__ {int y; int x; } ;
struct TYPE_25__ {TYPE_3__ cur_pos; } ;
struct TYPE_24__ {int path; } ;
struct TYPE_18__ {int nSize; int iType; } ;
struct TYPE_19__ {void* y; void* x; } ;
struct TYPE_23__ {TYPE_14__ emr; TYPE_1__ ptl; } ;
struct TYPE_22__ {int hdc; } ;
struct TYPE_20__ {void* bottom; void* right; void* top; void* left; } ;
typedef TYPE_2__ RECTL ;
typedef TYPE_3__ POINT ;
typedef TYPE_4__* PHYSDEV ;
typedef void* INT ;
typedef TYPE_5__ EMRLINETO ;
typedef TYPE_6__ EMFDRV_PDEVICE ;
typedef TYPE_7__ DC ;
typedef int BOOL ;


 int EMFDRV_UpdateBBox (TYPE_4__*,TYPE_2__*) ;
 int EMFDRV_WriteRecord (TYPE_4__*,TYPE_14__*) ;
 int EMR_LINETO ;
 int FALSE ;
 int GetCurrentPositionEx (int ,TYPE_3__*) ;
 int TRUE ;
 TYPE_6__* get_emf_physdev (TYPE_4__*) ;
 TYPE_7__* get_physdev_dc (TYPE_4__*) ;
 void* max (void*,int ) ;
 void* min (void*,int ) ;

BOOL EMFDRV_LineTo( PHYSDEV dev, INT x, INT y )
{
    EMFDRV_PDEVICE *physDev = get_emf_physdev( dev );

    DC *dc = get_physdev_dc( dev );

    POINT pt;
    EMRLINETO emr;
    RECTL bounds;

    emr.emr.iType = EMR_LINETO;
    emr.emr.nSize = sizeof(emr);
    emr.ptl.x = x;
    emr.ptl.y = y;

    if(!EMFDRV_WriteRecord( dev, &emr.emr ))
     return FALSE;



    pt = dc->cur_pos;

    bounds.left = min(x, pt.x);
    bounds.top = min(y, pt.y);
    bounds.right = max(x, pt.x);
    bounds.bottom = max(y, pt.y);

    if(!physDev->path)
        EMFDRV_UpdateBBox( dev, &bounds );

    return TRUE;
}
