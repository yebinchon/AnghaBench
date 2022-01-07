
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int aftd ;
typedef int add ;
struct TYPE_10__ {int cbwfx; int dwFormatTag; } ;
struct TYPE_9__ {int cbStruct; int cFormatTags; int fdwSupport; int cFilterTags; } ;
struct TYPE_8__ {int cbStruct; unsigned int dwFormatTagIndex; int cbFormatSize; int dwFormatTag; } ;
struct TYPE_7__ {int cFormatTags; TYPE_5__* aFormatTag; int pszDriverAlias; int fdwSupport; int cFilterTags; } ;
typedef TYPE_1__* PWINE_ACMDRIVERID ;
typedef int LPARAM ;
typedef int HACMDRIVERID ;
typedef scalar_t__ HACMDRIVER ;
typedef int BOOL ;
typedef TYPE_2__ ACMFORMATTAGDETAILSW ;
typedef TYPE_3__ ACMDRIVERDETAILSW ;


 int ACMDM_DRIVER_DETAILS ;
 int ACMDM_FORMATTAG_DETAILS ;
 int ACM_FORMATTAGDETAILSF_INDEX ;
 int FALSE ;
 int HEAP_ZERO_MEMORY ;
 TYPE_5__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_5__*) ;
 scalar_t__ MSACM_Message (scalar_t__,int ,int ,int ) ;
 int MSACM_hHeap ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int acmDriverClose (scalar_t__,int ) ;
 scalar_t__ acmDriverOpen (scalar_t__*,int ,int ) ;
 int debugstr_w (int ) ;

__attribute__((used)) static BOOL MSACM_FillCache(PWINE_ACMDRIVERID padid)
{
    HACMDRIVER had = 0;
    unsigned int ntag;
    ACMDRIVERDETAILSW add;
    ACMFORMATTAGDETAILSW aftd;

    if (acmDriverOpen(&had, (HACMDRIVERID)padid, 0) != 0)
 return FALSE;

    padid->aFormatTag = ((void*)0);
    add.cbStruct = sizeof(add);
    if (MSACM_Message(had, ACMDM_DRIVER_DETAILS, (LPARAM)&add, 0))
 goto errCleanUp;

    if (add.cFormatTags > 0) {
 padid->aFormatTag = HeapAlloc(MSACM_hHeap, HEAP_ZERO_MEMORY,
          add.cFormatTags * sizeof(padid->aFormatTag[0]));
 if (!padid->aFormatTag) goto errCleanUp;
    }

    padid->cFormatTags = add.cFormatTags;
    padid->cFilterTags = add.cFilterTags;
    padid->fdwSupport = add.fdwSupport;

    aftd.cbStruct = sizeof(aftd);

    for (ntag = 0; ntag < add.cFormatTags; ntag++) {
 aftd.dwFormatTagIndex = ntag;
 if (MSACM_Message(had, ACMDM_FORMATTAG_DETAILS, (LPARAM)&aftd, ACM_FORMATTAGDETAILSF_INDEX)) {
     TRACE("IIOs (%s)\n", debugstr_w(padid->pszDriverAlias));
     goto errCleanUp;
 }
 padid->aFormatTag[ntag].dwFormatTag = aftd.dwFormatTag;
 padid->aFormatTag[ntag].cbwfx = aftd.cbFormatSize;
    }

    acmDriverClose(had, 0);

    return TRUE;

errCleanUp:
    if (had) acmDriverClose(had, 0);
    HeapFree(MSACM_hHeap, 0, padid->aFormatTag);
    padid->aFormatTag = ((void*)0);
    return FALSE;
}
