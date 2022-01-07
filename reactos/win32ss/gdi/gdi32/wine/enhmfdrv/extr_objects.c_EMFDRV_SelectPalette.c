
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int emr ;
struct TYPE_14__ {int nSize; int iType; } ;
struct TYPE_13__ {scalar_t__ restoring; } ;
struct TYPE_12__ {int ihPal; TYPE_7__ emr; } ;
struct TYPE_11__ {int hdc; } ;
typedef TYPE_1__* PHYSDEV ;
typedef int HPALETTE ;
typedef TYPE_2__ EMRSELECTPALETTE ;
typedef TYPE_3__ EMFDRV_PDEVICE ;
typedef int DWORD ;
typedef int BOOL ;


 int DEFAULT_PALETTE ;
 int EMFDRV_CreatePalette (TYPE_1__*,int ) ;
 int EMFDRV_FindObject (TYPE_1__*,int ) ;
 scalar_t__ EMFDRV_WriteRecord (TYPE_1__*,TYPE_7__*) ;
 int EMR_SELECTPALETTE ;
 int GDI_hdc_using_object (int ,int ) ;
 int GetStockObject (int) ;
 TYPE_3__* get_emf_physdev (TYPE_1__*) ;

HPALETTE EMFDRV_SelectPalette( PHYSDEV dev, HPALETTE hPal, BOOL force )
{
    EMFDRV_PDEVICE *physDev = get_emf_physdev( dev );
    EMRSELECTPALETTE emr;
    DWORD index;

    if (physDev->restoring) return hPal;

    if (hPal == GetStockObject( DEFAULT_PALETTE ))
    {
        index = DEFAULT_PALETTE | 0x80000000;
        goto found;
    }

    if ((index = EMFDRV_FindObject( dev, hPal )) != 0)
        goto found;

    if (!(index = EMFDRV_CreatePalette( dev, hPal ))) return 0;
    GDI_hdc_using_object( hPal, dev->hdc );

found:
    emr.emr.iType = EMR_SELECTPALETTE;
    emr.emr.nSize = sizeof(emr);
    emr.ihPal = index;
    return EMFDRV_WriteRecord( dev, &emr.emr ) ? hPal : 0;
}
