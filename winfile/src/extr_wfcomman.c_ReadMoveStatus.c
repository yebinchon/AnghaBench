
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_13__ {int member_3; int member_4; int member_2; int member_1; int member_0; } ;
struct TYPE_12__ {TYPE_1__* lpVtbl; } ;
struct TYPE_11__ {int * hGlobal; } ;
struct TYPE_10__ {scalar_t__ (* GetData ) (TYPE_3__*,TYPE_4__*,TYPE_2__*) ;} ;
typedef TYPE_2__ STGMEDIUM ;
typedef int* LPDWORD ;
typedef TYPE_3__ IDataObject ;
typedef TYPE_4__ FORMATETC ;
typedef int DWORD ;


 int CFSTR_PREFERREDDROPEFFECT ;
 int DROPEFFECT_COPY ;
 int DROPEFFECT_MOVE ;
 int DVASPECT_CONTENT ;
 int* GlobalLock (int *) ;
 int GlobalUnlock (int *) ;
 int OleGetClipboard (TYPE_3__**) ;
 int RegisterClipboardFormat (int ) ;
 int ReleaseStgMedium (TYPE_2__*) ;
 scalar_t__ S_OK ;
 int TYMED_HGLOBAL ;
 scalar_t__ stub1 (TYPE_3__*,TYPE_4__*,TYPE_2__*) ;

DWORD
ReadMoveStatus()
{
 IDataObject *pDataObj;
 FORMATETC fmtetcDrop = { 0, 0, DVASPECT_CONTENT, -1, TYMED_HGLOBAL };
 UINT uFormatEffect = RegisterClipboardFormat(CFSTR_PREFERREDDROPEFFECT);
 FORMATETC fmtetcEffect = { uFormatEffect, 0, DVASPECT_CONTENT, -1, TYMED_HGLOBAL };
 STGMEDIUM stgmed;
 DWORD dwEffect = DROPEFFECT_COPY;

 OleGetClipboard(&pDataObj);

 if (pDataObj != ((void*)0) && pDataObj->lpVtbl->GetData(pDataObj, &fmtetcEffect, &stgmed) == S_OK && stgmed.hGlobal != ((void*)0))
 {
  LPDWORD lpEffect = GlobalLock(stgmed.hGlobal);
  if (*lpEffect & DROPEFFECT_COPY) dwEffect = DROPEFFECT_COPY;
  if (*lpEffect & DROPEFFECT_MOVE) dwEffect = DROPEFFECT_MOVE;
  GlobalUnlock(stgmed.hGlobal);
  ReleaseStgMedium(&stgmed);
 }

 return dwEffect;
}
