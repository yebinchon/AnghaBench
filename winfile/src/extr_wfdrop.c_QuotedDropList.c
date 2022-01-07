
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_13__ {int member_3; int member_4; int member_2; int member_1; int member_0; } ;
struct TYPE_12__ {TYPE_1__* lpVtbl; } ;
struct TYPE_11__ {int hGlobal; } ;
struct TYPE_10__ {scalar_t__ (* GetData ) (TYPE_3__*,TYPE_4__*,TYPE_2__*) ;} ;
typedef TYPE_2__ STGMEDIUM ;
typedef int * LPWSTR ;
typedef TYPE_3__ IDataObject ;
typedef int HDROP ;
typedef TYPE_4__ FORMATETC ;
typedef int DWORD ;


 int CF_HDROP ;
 void* CHAR_DQUOTE ;
 int CHAR_NULL ;
 int CHAR_SPACE ;
 int DVASPECT_CONTENT ;
 int DragQueryFile (int ,int,int *,int) ;
 int LMEM_FIXED ;
 scalar_t__ LocalAlloc (int ,int) ;
 int ReleaseStgMedium (TYPE_2__*) ;
 scalar_t__ S_OK ;
 int TYMED_HGLOBAL ;
 scalar_t__ stub1 (TYPE_3__*,TYPE_4__*,TYPE_2__*) ;

LPWSTR QuotedDropList(IDataObject *pDataObject)
{
 HDROP hdrop;
 DWORD cFiles, iFile, cchFiles;
 LPWSTR szFiles = ((void*)0), pch;
 FORMATETC fmtetc = { CF_HDROP, 0, DVASPECT_CONTENT, -1, TYMED_HGLOBAL };
 STGMEDIUM stgmed;

 if (pDataObject->lpVtbl->GetData(pDataObject, &fmtetc, &stgmed) == S_OK)
 {

  hdrop = stgmed.hGlobal;

  cFiles = DragQueryFile(hdrop, 0xffffffff, ((void*)0), 0);
  cchFiles = 0;
  for (iFile = 0; iFile < cFiles; iFile++)
   cchFiles += DragQueryFile(hdrop, iFile, ((void*)0), 0) + 1 + 2;

  pch = szFiles = (LPWSTR)LocalAlloc(LMEM_FIXED, cchFiles * sizeof(WCHAR));
  for (iFile = 0; iFile < cFiles; iFile++)
  {
   DWORD cchFile;

   *pch++ = CHAR_DQUOTE;

   cchFile = DragQueryFile(hdrop, iFile, pch, cchFiles);
   pch += cchFile;
   *pch++ = CHAR_DQUOTE;

   if (iFile+1 < cFiles)
    *pch++ = CHAR_SPACE;
   else
    *pch = CHAR_NULL;

   cchFiles -= cchFile + 1 + 2;
  }


  ReleaseStgMedium(&stgmed);
 }

 return szFiles;
}
