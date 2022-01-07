
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PTSTR ;
typedef int PDWORD ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ERROR_INVALID_DATA ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 int SetLastError (int ) ;
 scalar_t__ SetupCopyOEMInfW (int ,int ,int ,int ,int ,int ,int ,int *) ;
 int wDestinationInfFileName ;
 int wOEMSourceMediaLocation ;
 int wSourceInfFileName ;
 int walloc (char*,int ) ;
 scalar_t__ wchar_to_utf8_no_alloc (int ,char*,int ) ;
 int wconvert (char const*) ;
 int wfree (char const*) ;

__attribute__((used)) static __inline BOOL SetupCopyOEMInfU(const char* SourceInfFileName, const char* OEMSourceMediaLocation, DWORD OEMSourceMediaType,
           DWORD CopyStyle, char* DestinationInfFileName, DWORD DestinationInfFileNameSize,
           PDWORD RequiredSize, PTSTR DestinationInfFileNameComponent)
{
 BOOL ret = FALSE;
 DWORD err = ERROR_INVALID_DATA;
 wconvert(SourceInfFileName);
 wconvert(OEMSourceMediaLocation);

 walloc(DestinationInfFileName, DestinationInfFileNameSize);


 if (DestinationInfFileNameComponent != ((void*)0)) goto out;

 ret = SetupCopyOEMInfW(wSourceInfFileName, wOEMSourceMediaLocation, OEMSourceMediaType, CopyStyle,
  wDestinationInfFileName, DestinationInfFileNameSize, RequiredSize, ((void*)0));
 err = GetLastError();
 if ((ret != FALSE) && ((ret = wchar_to_utf8_no_alloc(wDestinationInfFileName, DestinationInfFileName, DestinationInfFileNameSize)) == 0)) {
  err = GetLastError();
 }
out:
 wfree(SourceInfFileName);
 wfree(OEMSourceMediaLocation);
 wfree(DestinationInfFileName);
 SetLastError(err);
 return ret;
}
