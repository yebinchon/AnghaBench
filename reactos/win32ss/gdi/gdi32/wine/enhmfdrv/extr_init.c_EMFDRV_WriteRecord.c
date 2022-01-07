
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* emh; scalar_t__ hFile; } ;
struct TYPE_12__ {int nSize; int iType; } ;
struct TYPE_11__ {int nBytes; int nRecords; } ;
typedef int PHYSDEV ;
typedef TYPE_1__ ENHMETAHEADER ;
typedef TYPE_2__ EMR ;
typedef TYPE_3__ EMFDRV_PDEVICE ;
typedef int DWORD ;
typedef int CHAR ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 TYPE_1__* HeapReAlloc (int ,int ,TYPE_1__*,int) ;
 int HeapSize (int ,int ,TYPE_1__*) ;
 int TRACE (char*,int ,int,char*) ;
 int TRUE ;
 int WriteFile (scalar_t__,TYPE_2__*,int,int*,int *) ;
 int assert (int) ;
 TYPE_3__* get_emf_physdev (int ) ;
 int memcpy (int *,TYPE_2__*,int) ;

BOOL EMFDRV_WriteRecord( PHYSDEV dev, EMR *emr )
{
    DWORD len;
    DWORD bytes_written;
    ENHMETAHEADER *emh;
    EMFDRV_PDEVICE *physDev = get_emf_physdev( dev );

    TRACE("record %d, size %d %s\n",
          emr->iType, emr->nSize, physDev->hFile ? "(to disk)" : "");

    assert( !(emr->nSize & 3) );

    physDev->emh->nBytes += emr->nSize;
    physDev->emh->nRecords++;

    if(physDev->hFile) {
        if (!WriteFile(physDev->hFile, emr, emr->nSize, &bytes_written, ((void*)0)))
     return FALSE;
    } else {
        DWORD nEmfSize = HeapSize(GetProcessHeap(), 0, physDev->emh);
        len = physDev->emh->nBytes;
        if (len > nEmfSize) {
            nEmfSize += (nEmfSize / 2) + emr->nSize;
            emh = HeapReAlloc(GetProcessHeap(), 0, physDev->emh, nEmfSize);
            if (!emh) return FALSE;
            physDev->emh = emh;
        }
        memcpy((CHAR *)physDev->emh + physDev->emh->nBytes - emr->nSize, emr,
               emr->nSize);
    }
    return TRUE;
}
