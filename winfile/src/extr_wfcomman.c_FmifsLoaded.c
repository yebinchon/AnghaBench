
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* PVOID ;
typedef int * HANDLE ;
typedef int BOOL ;


 int FALSE ;
 int FreeLibrary (int *) ;
 scalar_t__ GetProcAddress (int *,char*) ;
 int IDS_FMIFSLOADERR ;
 int IDS_WINFILE ;
 int * LoadLibrary (int ) ;
 int MB_ICONEXCLAMATION ;
 int MB_OK ;
 int MB_SYSTEMMODAL ;
 int MyMessageBox (int ,int ,int ,int) ;
 int TRUE ;
 int * hfmifsDll ;
 int hwndFrame ;
 void* lpfnDiskCopy ;
 void* lpfnFormat ;
 void* lpfnQuerySupportedMedia ;
 void* lpfnSetLabel ;
 int szFmifsDll ;

BOOL
FmifsLoaded()
{



   if (hfmifsDll < (HANDLE)32) {
      hfmifsDll = LoadLibrary(szFmifsDll);
      if (hfmifsDll < (HANDLE)32) {

         MyMessageBox(hwndFrame, IDS_WINFILE, IDS_FMIFSLOADERR, MB_OK | MB_ICONEXCLAMATION | MB_SYSTEMMODAL);
         hfmifsDll = ((void*)0);
         return FALSE;
      }
      else {
         lpfnFormat = (PVOID)GetProcAddress(hfmifsDll, "Format");
         lpfnQuerySupportedMedia = (PVOID)GetProcAddress(hfmifsDll, "QuerySupportedMedia");

         lpfnSetLabel = (PVOID)GetProcAddress(hfmifsDll, "SetLabel");
         lpfnDiskCopy = (PVOID)GetProcAddress(hfmifsDll, "DiskCopy");
         if (!lpfnFormat || !lpfnQuerySupportedMedia ||
            !lpfnSetLabel || !lpfnDiskCopy) {

            MyMessageBox(hwndFrame, IDS_WINFILE, IDS_FMIFSLOADERR, MB_OK | MB_ICONEXCLAMATION | MB_SYSTEMMODAL);
            FreeLibrary(hfmifsDll);
            hfmifsDll = ((void*)0);
            return FALSE;
         }
      }
   }
   return TRUE;
}
