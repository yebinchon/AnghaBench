
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;


typedef int emr ;
typedef int UINT ;
struct TYPE_19__ {scalar_t__ restoring; } ;
struct TYPE_15__ {int nSize; int iType; } ;
struct TYPE_18__ {int ihObject; TYPE_11__ emr; } ;
struct TYPE_17__ {TYPE_1__* funcs; int hdc; } ;
struct TYPE_16__ {int (* pSelectFont ) (TYPE_2__*,scalar_t__,int *) ;} ;
typedef TYPE_2__* PHYSDEV ;
typedef scalar_t__ HFONT ;
typedef TYPE_3__ EMRSELECTOBJECT ;
typedef TYPE_4__ EMFDRV_PDEVICE ;
typedef int DWORD ;


 int DEFAULT_GUI_FONT ;
 int DEFAULT_PALETTE ;
 int EMFDRV_CreateFontIndirect (TYPE_2__*,scalar_t__) ;
 int EMFDRV_FindObject (TYPE_2__*,scalar_t__) ;
 int EMFDRV_WriteRecord (TYPE_2__*,TYPE_11__*) ;
 int EMR_SELECTOBJECT ;
 int GDI_hdc_using_object (scalar_t__,int ) ;
 TYPE_2__* GET_NEXT_PHYSDEV (TYPE_2__*,int ) ;
 int GGO_BITMAP ;
 scalar_t__ GetStockObject (int) ;
 int OEM_FIXED_FONT ;
 TYPE_4__* get_emf_physdev (TYPE_2__*) ;
 int pSelectFont ;
 int stub1 (TYPE_2__*,scalar_t__,int *) ;

HFONT EMFDRV_SelectFont( PHYSDEV dev, HFONT hFont, UINT *aa_flags )
{
    EMFDRV_PDEVICE *physDev = get_emf_physdev( dev );
    EMRSELECTOBJECT emr;
    DWORD index;
    int i;

    if (physDev->restoring) goto done;







    for (i = OEM_FIXED_FONT; i <= DEFAULT_GUI_FONT; i++)
    {
        if (i != DEFAULT_PALETTE && hFont == GetStockObject(i))
        {
            index = i | 0x80000000;
            goto found;
        }
    }

    if((index = EMFDRV_FindObject(dev, hFont)) != 0)
        goto found;

    if (!(index = EMFDRV_CreateFontIndirect(dev, hFont ))) return 0;
    GDI_hdc_using_object(hFont, dev->hdc);

 found:
    emr.emr.iType = EMR_SELECTOBJECT;
    emr.emr.nSize = sizeof(emr);
    emr.ihObject = index;
    if(!EMFDRV_WriteRecord( dev, &emr.emr ))
        return 0;
done:
    *aa_flags = GGO_BITMAP;
    dev = GET_NEXT_PHYSDEV( dev, pSelectFont );
    dev->funcs->pSelectFont( dev, hFont, aa_flags );
    return hFont;
}
