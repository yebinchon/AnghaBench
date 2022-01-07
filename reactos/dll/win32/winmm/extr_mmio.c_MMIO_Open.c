
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int buffer ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_13__ {scalar_t__ fccIOProc; int dwFlags; int hmmio; scalar_t__* adwInfo; } ;
struct TYPE_12__ {int count; int * pIOProc; } ;
struct TYPE_11__ {TYPE_3__* ioProc; TYPE_4__ info; int dwFileSize; void* bBufferLoaded; void* bTmpIOProc; } ;
struct TYPE_10__ {scalar_t__ fccIOProc; void* wErrorRet; scalar_t__* adwInfo; scalar_t__ cchBuffer; int * pchBuffer; int * pIOProc; } ;
typedef TYPE_1__ MMIOINFO ;
typedef TYPE_2__* LPWINE_MMIO ;
typedef scalar_t__ LPSTR ;
typedef int LPARAM ;
typedef int HMMIO ;
typedef int HANDLE ;
typedef int DWORD ;
typedef void* BOOL ;


 void* FALSE ;
 void* FOURCC_DOS ;
 scalar_t__ FOURCC_MEM ;
 scalar_t__ GetFileAttributesA (char*) ;
 int GetFileSize (int ,int *) ;
 int GetFullPathNameA (scalar_t__,int,char*,int *) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int MAX_PATH ;
 int MMIOM_OPEN ;
 int MMIO_ALLOCBUF ;
 TYPE_2__* MMIO_Create () ;
 scalar_t__ MMIO_DEFAULTBUFFER ;
 int MMIO_Destroy (TYPE_2__*) ;
 int MMIO_EXIST ;
 void* MMIO_FindProcNode (scalar_t__) ;
 int MMIO_INSTALLPROC ;
 int MMIO_InstallIOProc (scalar_t__,int *,int ,void*) ;
 int MMIO_PARSE ;
 scalar_t__ MMIO_ParseExtA (scalar_t__) ;
 void* MMIO_SetBuffer (TYPE_2__*,int *,scalar_t__,int ) ;
 void* MMSYSERR_NOERROR ;
 int TRACE (char*,scalar_t__,TYPE_1__*,int,char*) ;
 void* TRUE ;
 int assert (int) ;
 void* send_message (TYPE_3__*,TYPE_4__*,int ,int ,int ,void*) ;
 int strcpy (scalar_t__,char*) ;

__attribute__((used)) static HMMIO MMIO_Open(LPSTR szFileName, MMIOINFO* refmminfo, DWORD dwOpenFlags, BOOL is_unicode)
{
    LPWINE_MMIO wm;
    MMIOINFO mmioinfo;

    TRACE("('%s', %p, %08X, %s);\n", szFileName, refmminfo, dwOpenFlags, is_unicode ? "unicode" : "ansi");

    if (!refmminfo) {
        refmminfo = &mmioinfo;

 mmioinfo.fccIOProc = 0;
 mmioinfo.pIOProc = ((void*)0);
 mmioinfo.pchBuffer = ((void*)0);
 mmioinfo.cchBuffer = 0;
        is_unicode = FALSE;
    }

    if (dwOpenFlags & (MMIO_PARSE|MMIO_EXIST)) {
 char buffer[MAX_PATH];

 if (!szFileName)
     return (HMMIO)FALSE;
 if (GetFullPathNameA(szFileName, sizeof(buffer), buffer, ((void*)0)) >= sizeof(buffer))
     return (HMMIO)FALSE;
 if ((dwOpenFlags & MMIO_EXIST) && (GetFileAttributesA(buffer) == INVALID_FILE_ATTRIBUTES))
     return (HMMIO)FALSE;
 strcpy(szFileName, buffer);
 return (HMMIO)TRUE;
    }

    if ((wm = MMIO_Create()) == ((void*)0))
 return 0;


    if (refmminfo->fccIOProc == 0 && refmminfo->pIOProc == ((void*)0)) {
 wm->info.fccIOProc = MMIO_ParseExtA(szFileName);

 if (wm->info.fccIOProc == 0)
     wm->info.fccIOProc = FOURCC_DOS;
 if (!(wm->ioProc = MMIO_FindProcNode(wm->info.fccIOProc))) {

     wm->info.fccIOProc = FOURCC_DOS;
     if (!(wm->ioProc = MMIO_FindProcNode(wm->info.fccIOProc)))
  goto error2;
 }
 wm->bTmpIOProc = FALSE;
    }

    else if (refmminfo->pIOProc == ((void*)0)) {
 wm->info.fccIOProc = refmminfo->fccIOProc;
 if (!(wm->ioProc = MMIO_FindProcNode(wm->info.fccIOProc))) goto error2;
 wm->bTmpIOProc = FALSE;
    }

    else {
 wm->info.fccIOProc = refmminfo->fccIOProc;
 MMIO_InstallIOProc(wm->info.fccIOProc, refmminfo->pIOProc,
                           MMIO_INSTALLPROC, is_unicode);
 if (!(wm->ioProc = MMIO_FindProcNode(wm->info.fccIOProc))) goto error2;
 assert(wm->ioProc->pIOProc == refmminfo->pIOProc);
 wm->bTmpIOProc = TRUE;
    }

    wm->ioProc->count++;
    wm->info.dwFlags = dwOpenFlags;

    if (dwOpenFlags & MMIO_ALLOCBUF) {
 refmminfo->wErrorRet = MMIO_SetBuffer(wm, refmminfo->pchBuffer,
     refmminfo->cchBuffer ? refmminfo->cchBuffer : MMIO_DEFAULTBUFFER, 0);
 if (refmminfo->wErrorRet != MMSYSERR_NOERROR)
     goto error1;
    } else {
        refmminfo->wErrorRet = MMIO_SetBuffer(wm, refmminfo->pchBuffer, refmminfo->cchBuffer, 0);
 if (refmminfo->wErrorRet != MMSYSERR_NOERROR)
     goto error1;
    }

    if (wm->info.fccIOProc == FOURCC_MEM && !(wm->info.dwFlags & MMIO_ALLOCBUF))
        wm->bBufferLoaded = TRUE;


    wm->info.adwInfo[0] = refmminfo->adwInfo[0];


    refmminfo->wErrorRet = send_message(wm->ioProc, &wm->info, MMIOM_OPEN,
                                        (LPARAM)szFileName, 0, FALSE);


    wm->dwFileSize = GetFileSize((HANDLE)(ULONG_PTR)wm->info.adwInfo[0], ((void*)0));

    if (refmminfo->wErrorRet == 0)
 return wm->info.hmmio;
 error1:
    if (wm->ioProc) wm->ioProc->count--;
 error2:
    MMIO_Destroy(wm);
    return 0;
}
