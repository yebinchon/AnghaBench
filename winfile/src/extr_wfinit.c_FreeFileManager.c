
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;


 int CLOSEHANDLE (int ) ;
 int CloseHandle (scalar_t__) ;
 int CriticalSectionPath ;
 int D_Info () ;
 int D_NetCon () ;
 int D_Space () ;
 int D_Type () ;
 int D_VolInfo () ;
 int DeleteBitmaps () ;
 int DeleteCriticalSection (int *) ;
 int DeleteObject (scalar_t__) ;
 int DestroyDirRead () ;
 int DestroyWatchList () ;
 int DocDestruct (int ) ;
 int FALSE ;
 int FreeLibrary (scalar_t__) ;
 int OleUninitialize () ;
 int UpdateWaitQuit () ;
 scalar_t__ bJAPAN ;
 scalar_t__ bUpdateRun ;
 int hEventAcledit ;
 int hEventNetLoad ;
 int hEventUpdate ;
 int hEventUpdatePartial ;
 scalar_t__ hFont ;
 scalar_t__ hFontStatus ;
 scalar_t__ hMPR ;
 scalar_t__ hNTLanman ;
 scalar_t__ hThreadUpdate ;
 scalar_t__ hVersion ;
 scalar_t__ hfmifsDll ;
 scalar_t__ hfontDriveList ;
 int lpfnRegisterPenApp (int,int ) ;
 int ppDocBucket ;
 int ppProgBucket ;
 int stub1 (int,int ) ;

VOID
FreeFileManager()
{
   if (hThreadUpdate && bUpdateRun) {
      UpdateWaitQuit();
      CloseHandle(hThreadUpdate);
   }

   DeleteCriticalSection(&CriticalSectionPath);



   if (hEventNetLoad) CloseHandle(hEventNetLoad);
   if (hEventAcledit) CloseHandle(hEventAcledit);
   if (hEventUpdate) CloseHandle(hEventUpdate);
   if (hEventUpdatePartial) CloseHandle(hEventUpdatePartial);

   DestroyWatchList();
   DestroyDirRead();

   D_Info();

   D_Type();
   D_Space();
   D_NetCon();
   D_VolInfo();

   DocDestruct(ppDocBucket);
   DocDestruct(ppProgBucket);

   if (lpfnRegisterPenApp)
      (*lpfnRegisterPenApp)(1, FALSE);

   DeleteBitmaps();

   if (hFont)
      DeleteObject(hFont);

   if (hfontDriveList)
      DeleteObject(hfontDriveList);


    if( bJAPAN ) {
        if (hFontStatus)
            DeleteObject(hFontStatus);
    }




   if (hfmifsDll)
      FreeLibrary(hfmifsDll);

   if (hNTLanman)
      FreeLibrary(hNTLanman);

   if (hMPR)
      FreeLibrary(hMPR);

   if (hVersion)
      FreeLibrary(hVersion);

 OleUninitialize();


}
