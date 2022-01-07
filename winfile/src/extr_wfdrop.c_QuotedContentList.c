
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int sm_content ;
typedef char WCHAR ;
struct TYPE_25__ {char* cFileName; } ;
struct TYPE_24__ {unsigned int cItems; TYPE_6__* fgd; } ;
struct TYPE_23__ {unsigned short member_0; int member_3; unsigned int lindex; int member_4; int member_2; int * member_1; } ;
struct TYPE_22__ {TYPE_1__* lpVtbl; } ;
struct TYPE_21__ {int hGlobal; int pstm; int member_2; int member_1; int member_0; } ;
struct TYPE_20__ {scalar_t__ (* QueryGetData ) (TYPE_3__*,TYPE_4__*) ;scalar_t__ (* GetData ) (TYPE_3__*,TYPE_4__*,TYPE_2__*) ;} ;
typedef char TCHAR ;
typedef TYPE_2__ STGMEDIUM ;
typedef char* LPWSTR ;
typedef TYPE_3__ IDataObject ;
typedef scalar_t__ HRESULT ;
typedef int HLOCAL ;
typedef TYPE_4__ FORMATETC ;
typedef TYPE_5__ FILEGROUPDESCRIPTOR ;
typedef TYPE_6__ FILEDESCRIPTOR ;


 int AddBackslash (char*) ;
 int CFSTR_FILECONTENTS ;
 int CFSTR_FILEDESCRIPTOR ;
 int CheckEsc (char*) ;
 int DVASPECT_CONTENT ;
 int GetTempPath (int ,char*) ;
 scalar_t__ GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int LMEM_FIXED ;
 scalar_t__ LocalAlloc (int ,unsigned int) ;
 int LocalFree (int ) ;
 int MAXPATHLEN ;
 int MAX_PATH ;
 int MessageBeep (int ) ;
 unsigned short RegisterClipboardFormat (int ) ;
 int ReleaseStgMedium (TYPE_2__*) ;
 scalar_t__ S_OK ;
 scalar_t__ StreamToFile (int ,char*) ;
 char* TEXT (char*) ;
 int TYMED_HGLOBAL ;
 int TYMED_ISTREAM ;
 int lstrcat (char*,char*) ;
 int lstrcpy (char*,char*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ stub1 (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ stub2 (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ stub3 (TYPE_3__*,TYPE_4__*,TYPE_2__*) ;
 scalar_t__ stub4 (TYPE_3__*,TYPE_4__*,TYPE_2__*) ;
 int wcslen (char*) ;

LPWSTR QuotedContentList(IDataObject *pDataObject)
{
    FILEGROUPDESCRIPTOR *file_group_descriptor;
    FILEDESCRIPTOR file_descriptor;
 HRESULT hr;
 LPWSTR szFiles = ((void*)0);

    unsigned short cp_format_descriptor = RegisterClipboardFormat(CFSTR_FILEDESCRIPTOR);
    unsigned short cp_format_contents = RegisterClipboardFormat(CFSTR_FILECONTENTS);


    FORMATETC descriptor_format = {cp_format_descriptor, ((void*)0), DVASPECT_CONTENT, -1, TYMED_HGLOBAL};
    FORMATETC contents_format = {cp_format_contents, ((void*)0), DVASPECT_CONTENT, -1, TYMED_ISTREAM};


    hr = pDataObject->lpVtbl->QueryGetData(pDataObject, &descriptor_format);
    if (hr == S_OK)
 {

        hr = pDataObject->lpVtbl->QueryGetData(pDataObject, &contents_format);
        if (hr == S_OK)
  {

            STGMEDIUM sm_desc= {0,0,0};
            STGMEDIUM sm_content = {0,0,0};
   unsigned int file_index, cchTempPath, cchFiles;
            WCHAR szTempPath[MAX_PATH+1];

            hr = pDataObject->lpVtbl->GetData(pDataObject, &descriptor_format, &sm_desc);
   if (hr != S_OK)
    return ((void*)0);

            file_group_descriptor = (FILEGROUPDESCRIPTOR *) GlobalLock(sm_desc.hGlobal);

   GetTempPath(MAX_PATH, szTempPath);
   cchTempPath = wcslen(szTempPath);


   cchFiles = 0;
            for (file_index = 0; file_index < file_group_descriptor->cItems; file_index++)
   {
                file_descriptor = file_group_descriptor->fgd[file_index];
    cchFiles += 1 + cchTempPath + 1 + wcslen(file_descriptor.cFileName) + 2;
   }

   szFiles = (LPWSTR)LocalAlloc(LMEM_FIXED, cchFiles * sizeof(WCHAR));
   szFiles[0] = '\0';


            for (file_index = 0; file_index < file_group_descriptor->cItems; file_index++)
   {
                file_descriptor = file_group_descriptor->fgd[file_index];
                contents_format.lindex = file_index;
    memset(&sm_content, 0, sizeof(sm_content));
                hr = pDataObject->lpVtbl->GetData(pDataObject, &contents_format, &sm_content);

                if (hr == S_OK)
    {

     TCHAR szTempFile[MAXPATHLEN*2+1];

     lstrcpy(szTempFile, szTempPath);
              AddBackslash(szTempFile);
        lstrcat(szTempFile, file_descriptor.cFileName);




     hr = StreamToFile(sm_content.pstm, szTempFile);

     if (hr == S_OK)
     {
      CheckEsc(szTempFile);

      if (szFiles[0] != '\0')
       lstrcat(szFiles, TEXT(" "));
      lstrcat(szFiles, szTempFile);
     }

     ReleaseStgMedium(&sm_content);
                }
            }

            GlobalUnlock(sm_desc.hGlobal);
            ReleaseStgMedium(&sm_desc);

   if (szFiles[0] == '\0')
   {

    MessageBeep(0);
    LocalFree((HLOCAL)szFiles);
    szFiles = ((void*)0);
   }
        }
 }
    return szFiles;
}
