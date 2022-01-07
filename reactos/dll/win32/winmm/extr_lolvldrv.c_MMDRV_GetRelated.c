
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nIDMin; scalar_t__ nIDMax; } ;
typedef TYPE_1__ WINE_MM_DRIVER_PART ;
typedef size_t UINT ;
struct TYPE_9__ {TYPE_1__* parts; } ;
struct TYPE_8__ {size_t mmdIndex; } ;
typedef TYPE_2__* LPWINE_MLD ;
typedef int HANDLE ;
typedef scalar_t__ BOOL ;


 TYPE_2__* MMDRV_Get (int ,size_t,scalar_t__) ;
 TYPE_2__* MMDRV_GetByID (scalar_t__,size_t) ;
 TYPE_3__* MMDrvs ;
 int TRACE (char*,int ,size_t,char,size_t) ;

LPWINE_MLD MMDRV_GetRelated(HANDLE hndl, UINT srcType,
     BOOL bSrcCanBeID, UINT dstType)
{
    LPWINE_MLD mld;
    TRACE("(%p, %04x, %c, %04x)\n",
          hndl, srcType, bSrcCanBeID ? 'Y' : 'N', dstType);

    if ((mld = MMDRV_Get(hndl, srcType, bSrcCanBeID)) != ((void*)0)) {
 WINE_MM_DRIVER_PART* part = &MMDrvs[mld->mmdIndex].parts[dstType];
 if (part->nIDMin < part->nIDMax)
     return MMDRV_GetByID(part->nIDMin, dstType);
    }
    return ((void*)0);
}
