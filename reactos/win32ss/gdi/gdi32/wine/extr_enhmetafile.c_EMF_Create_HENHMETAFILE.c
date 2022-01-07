
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int on_disk; TYPE_1__* emh; } ;
struct TYPE_7__ {scalar_t__ iType; scalar_t__ dSignature; int nBytes; } ;
typedef int HENHMETAFILE ;
typedef TYPE_1__ ENHMETAHEADER ;
typedef TYPE_2__ ENHMETAFILEOBJ ;
typedef int BOOL ;


 scalar_t__ EMR_HEADER ;
 scalar_t__ ENHMETA_SIGNATURE ;
 int ERROR_INVALID_DATA ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int OBJ_ENHMETAFILE ;
 int SetLastError (int ) ;
 int WARN (char*,scalar_t__,scalar_t__) ;
 int alloc_gdi_handle (TYPE_2__*,int ,int *) ;

HENHMETAFILE EMF_Create_HENHMETAFILE(ENHMETAHEADER *emh, BOOL on_disk )
{
    HENHMETAFILE hmf;
    ENHMETAFILEOBJ *metaObj;

    if (emh->iType != EMR_HEADER)
    {
        SetLastError(ERROR_INVALID_DATA);
        return 0;
    }
    if (emh->dSignature != ENHMETA_SIGNATURE ||
        (emh->nBytes & 3))
    {
        WARN("Invalid emf header type 0x%08x sig 0x%08x.\n",
             emh->iType, emh->dSignature);
        return 0;
    }

    if (!(metaObj = HeapAlloc( GetProcessHeap(), 0, sizeof(*metaObj) ))) return 0;

    metaObj->emh = emh;
    metaObj->on_disk = on_disk;

    if (!(hmf = alloc_gdi_handle( metaObj, OBJ_ENHMETAFILE, ((void*)0) )))
        HeapFree( GetProcessHeap(), 0, metaObj );
    return hmf;
}
