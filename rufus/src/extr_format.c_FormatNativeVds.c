
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef char WCHAR ;
struct TYPE_3__ {int * pwszName; } ;
typedef TYPE_1__ VDS_VOLUME_PROP ;
typedef int USHORT ;
typedef int ULONG ;
typedef int LPWSTR ;
typedef char* LPCSTR ;
typedef int IVdsVolumeMF3 ;
typedef int IVdsVolume ;
typedef int IVdsSwProvider ;
typedef int IVdsServiceLoader ;
typedef int IVdsService ;
typedef int IVdsProvider ;
typedef int IVdsPack ;
typedef int IVdsAsync ;
typedef int IUnknown ;
typedef int IEnumVdsObject ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int BOOL ;


 int CHECK_FOR_USER_CANCEL ;
 int CLSCTX_LOCAL_SERVER ;
 int CLSCTX_REMOTE_SERVER ;
 int CLSID_VdsLoader ;
 int COINIT_APARTMENTTHREADED ;
 scalar_t__ CoCreateInstance (int *,int *,int,int *,void**) ;
 int CoInitializeEx (int *,int ) ;
 int CoInitializeSecurity (int *,int,int *,int *,int ,int ,int *,int ,int *) ;
 int CoTaskMemFree (int *) ;
 int ERROR_GEN_FAILURE ;
 int ERROR_PATH_NOT_FOUND ;
 int ERROR_SEVERITY_ERROR ;
 scalar_t__ E_FAIL ;
 int FAC (int ) ;
 int FACILITY_STORAGE ;
 int FALSE ;
 int FP_COMPRESSION ;
 int FP_QUICK ;
 size_t FS_EXFAT ;
 size_t FS_UDF ;
 int * FileSystemLabel ;
 int FormatStatus ;
 char* GetLogicalName (int,int ,int,int) ;
 scalar_t__ IEnumVdsObject_Next (int *,int,int **,int*) ;
 int IGNORE_RETVAL (int ) ;
 int IID_IVdsPack ;
 int IID_IVdsProvider ;
 int IID_IVdsServiceLoader ;
 int IID_IVdsSwProvider ;
 int IID_IVdsVolume ;
 int IID_IVdsVolumeMF3 ;
 scalar_t__ IS_ERROR (int) ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 int IVdsAsync_Cancel (int *) ;
 scalar_t__ IVdsAsync_QueryStatus (int *,scalar_t__*,int*) ;
 int IVdsAsync_Release (int *) ;
 scalar_t__ IVdsPack_QueryVolumes (int *,int **) ;
 int IVdsProvider_Release (int *) ;
 scalar_t__ IVdsServiceLoader_LoadService (int *,char*,int **) ;
 int IVdsServiceLoader_Release (int *) ;
 scalar_t__ IVdsService_QueryProviders (int *,int ,int **) ;
 scalar_t__ IVdsService_WaitForServiceReady (int *) ;
 scalar_t__ IVdsSwProvider_QueryInterface (int *,int *,void**) ;
 scalar_t__ IVdsSwProvider_QueryPacks (int *,int **) ;
 int IVdsSwProvider_Release (int *) ;
 scalar_t__ IVdsVolumeMF3_FormatEx2 (int *,char*,int ,int,char*,int,int **) ;
 scalar_t__ IVdsVolumeMF3_QueryVolumeGuidPathnames (int *,int **,int*) ;
 int IVdsVolumeMF3_Release (int *) ;
 scalar_t__ IVdsVolume_GetProperties (int *,TYPE_1__*) ;
 scalar_t__ IVdsVolume_QueryInterface (int *,int *,void**) ;
 int IVdsVolume_Release (int *) ;
 int MSG_217 ;
 int MSG_218 ;
 int MSG_220 ;
 int MSG_222 ;
 int OP_CREATE_FS ;
 int OP_FORMAT ;
 int PrintInfo (int ,int ,int,int) ;
 int PrintInfoDebug (int ,int ,char*,...) ;
 int RPC_C_AUTHN_LEVEL_CONNECT ;
 int RPC_C_IMP_LEVEL_IMPERSONATE ;
 int ReadSetting32 (int ) ;
 int SETTING_USE_UDF_VERSION ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int Sleep (int) ;
 int TRUE ;
 int UpdateProgress (int ,float) ;
 int UpdateProgressWithInfo (int ,int ,int,int) ;
 int UpdateProgressWithInfoInit (int *,int) ;
 scalar_t__ VDS_E_OPERATION_PENDING ;
 int VDS_QUERY_SOFTWARE_PROVIDERS ;
 int VDS_SET_ERROR (scalar_t__) ;
 scalar_t__ VDS_S_PROPERTIES_INCOMPLETE ;
 int WindowsErrorString () ;
 scalar_t__ dur_mins ;
 scalar_t__ dur_secs ;
 float format_percent ;
 int safe_free (char*) ;
 scalar_t__ strcmp (char*,int ) ;
 int uprintf (char*,...) ;
 char* utf8_to_wchar (char*) ;
 scalar_t__ wcscmp (char*,int ) ;

__attribute__((used)) static BOOL FormatNativeVds(DWORD DriveIndex, uint64_t PartitionOffset, DWORD ClusterSize, LPCSTR FSName, LPCSTR Label, DWORD Flags)
{
 BOOL r = FALSE, bFoundVolume = FALSE;
 HRESULT hr;
 ULONG ulFetched;
 IVdsServiceLoader *pLoader;
 IVdsService *pService;
 IEnumVdsObject *pEnum;
 IUnknown *pUnk;
 char* VolumeName = ((void*)0);
 WCHAR *wVolumeName = ((void*)0), *wLabel = utf8_to_wchar(Label), *wFSName = utf8_to_wchar(FSName);

 if ((strcmp(FSName, FileSystemLabel[FS_EXFAT]) == 0) && !((dur_mins == 0) && (dur_secs == 0))) {
  PrintInfoDebug(0, MSG_220, FSName, dur_mins, dur_secs);
 } else {
  PrintInfoDebug(0, MSG_222, FSName);
 }
 UpdateProgressWithInfoInit(((void*)0), TRUE);
 VolumeName = GetLogicalName(DriveIndex, PartitionOffset, TRUE, TRUE);
 wVolumeName = utf8_to_wchar(VolumeName);
 if (wVolumeName == ((void*)0)) {
  uprintf("Could not read volume name");
  FormatStatus = ERROR_SEVERITY_ERROR | FAC(FACILITY_STORAGE) | ERROR_GEN_FAILURE;
  goto out;
 }


 IGNORE_RETVAL(CoInitializeEx(((void*)0), COINIT_APARTMENTTHREADED));
 IGNORE_RETVAL(CoInitializeSecurity(((void*)0), -1, ((void*)0), ((void*)0), RPC_C_AUTHN_LEVEL_CONNECT,
  RPC_C_IMP_LEVEL_IMPERSONATE, ((void*)0), 0, ((void*)0)));


 hr = CoCreateInstance(&CLSID_VdsLoader, ((void*)0), CLSCTX_LOCAL_SERVER | CLSCTX_REMOTE_SERVER,
  &IID_IVdsServiceLoader, (void **)&pLoader);
 if (hr != S_OK) {
  VDS_SET_ERROR(hr);
  uprintf("Could not create VDS Loader Instance: %s", WindowsErrorString());
  goto out;
 }


 hr = IVdsServiceLoader_LoadService(pLoader, L"", &pService);
 IVdsServiceLoader_Release(pLoader);
 if (hr != S_OK) {
  VDS_SET_ERROR(hr);
  uprintf("Could not load VDS Service: %s", WindowsErrorString());
  goto out;
 }


 hr = IVdsService_WaitForServiceReady(pService);
 if (hr != S_OK) {
  VDS_SET_ERROR(hr);
  uprintf("VDS Service is not ready: %s", WindowsErrorString());
  goto out;
 }


 hr = IVdsService_QueryProviders(pService, VDS_QUERY_SOFTWARE_PROVIDERS, &pEnum);
 if (hr != S_OK) {
  VDS_SET_ERROR(hr);
  uprintf("Could not query VDS Service Providers: %s", WindowsErrorString());
  goto out;
 }

 while (IEnumVdsObject_Next(pEnum, 1, &pUnk, &ulFetched) == S_OK) {
  IVdsProvider *pProvider;
  IVdsSwProvider *pSwProvider;
  IEnumVdsObject *pEnumPack;
  IUnknown *pPackUnk;
  CHECK_FOR_USER_CANCEL;


  hr = IUnknown_QueryInterface(pUnk, &IID_IVdsProvider, (void **)&pProvider);
  IUnknown_Release(pUnk);
  if (hr != S_OK) {
   VDS_SET_ERROR(hr);
   uprintf("Could not get VDS Provider: %s", WindowsErrorString());
   goto out;
  }


  hr = IVdsSwProvider_QueryInterface(pProvider, &IID_IVdsSwProvider, (void **)&pSwProvider);
  IVdsProvider_Release(pProvider);
  if (hr != S_OK) {
   VDS_SET_ERROR(hr);
   uprintf("Could not get VDS Software Provider: %s", WindowsErrorString());
   goto out;
  }


  hr = IVdsSwProvider_QueryPacks(pSwProvider, &pEnumPack);
  IVdsSwProvider_Release(pSwProvider);
  if (hr != S_OK) {
   VDS_SET_ERROR(hr);
   uprintf("Could not get VDS Software Provider Packs: %s", WindowsErrorString());
   goto out;
  }


  while (IEnumVdsObject_Next(pEnumPack, 1, &pPackUnk, &ulFetched) == S_OK) {
   IVdsPack *pPack;
   IEnumVdsObject *pEnumVolume;
   IUnknown *pVolumeUnk;
   CHECK_FOR_USER_CANCEL;

   hr = IUnknown_QueryInterface(pPackUnk, &IID_IVdsPack, (void **)&pPack);
   IUnknown_Release(pPackUnk);
   if (hr != S_OK) {
    VDS_SET_ERROR(hr);
    uprintf("Could not query VDS Software Provider Pack: %s", WindowsErrorString());
    goto out;
   }


   hr = IVdsPack_QueryVolumes(pPack, &pEnumVolume);
   if (hr != S_OK) {
    VDS_SET_ERROR(hr);
    uprintf("Could not query VDS volumes: %s", WindowsErrorString());
    goto out;
   }


   while (IEnumVdsObject_Next(pEnumVolume, 1, &pVolumeUnk, &ulFetched) == S_OK) {
    BOOL match;
    HRESULT hr2 = E_FAIL;
    VDS_VOLUME_PROP VolumeProps;
    LPWSTR *wszPathArray;
    ULONG ulPercentCompleted, ulNumberOfPaths;
    USHORT usFsVersion = 0;
    IVdsVolume *pVolume;
    IVdsAsync* pAsync;
    IVdsVolumeMF3 *pVolumeMF3;
    CHECK_FOR_USER_CANCEL;


    hr = IUnknown_QueryInterface(pVolumeUnk, &IID_IVdsVolume, (void **)&pVolume);
    if (hr != S_OK) {
     VDS_SET_ERROR(hr);
     uprintf("Could not query VDS Volume Interface: %s", WindowsErrorString());
     goto out;
    }

    hr = IVdsVolume_GetProperties(pVolume, &VolumeProps);
    if ((hr != S_OK) && (hr != VDS_S_PROPERTIES_INCOMPLETE)) {
     VDS_SET_ERROR(hr);
     IVdsVolume_Release(pVolume);
     uprintf("Could not query VDS Volume Properties: %s", WindowsErrorString());
     continue;
    }
    CoTaskMemFree(VolumeProps.pwszName);


    hr = IVdsVolume_QueryInterface(pVolume, &IID_IVdsVolumeMF3, (void **)&pVolumeMF3);
    IVdsVolume_Release(pVolume);
    if (hr != S_OK) {
     VDS_SET_ERROR(hr);
     uprintf("Could not access VDS VolumeMF3 interface: %s", WindowsErrorString());
     continue;
    }


    hr = IVdsVolumeMF3_QueryVolumeGuidPathnames(pVolumeMF3, &wszPathArray, &ulNumberOfPaths);
    if (hr != S_OK) {
     VDS_SET_ERROR(hr);
     uprintf("Could not query VDS VolumeGuidPathnames: %s", WindowsErrorString());
     continue;
    }

    if (ulNumberOfPaths > 1)
     uprintf("Notice: Volume %S has more than one GUID...", wszPathArray[0]);

    match = (wcscmp(wVolumeName, wszPathArray[0]) == 0);
    CoTaskMemFree(wszPathArray);
    if (!match)
     continue;

    bFoundVolume = TRUE;
    if (strcmp(Label, FileSystemLabel[FS_UDF]) == 0)
     usFsVersion = ReadSetting32(SETTING_USE_UDF_VERSION);
    if (ClusterSize < 0x200) {
     ClusterSize = 0;
     uprintf("Using default cluster size");
    } else {
     uprintf("Using cluster size: %d bytes", ClusterSize);
    }
    format_percent = 0.0f;
    uprintf("%s format was selected", (Flags & FP_QUICK) ? "Quick" : "Slow");
    if (Flags & FP_COMPRESSION)
     uprintf("NTFS compression is enabled");

    hr = IVdsVolumeMF3_FormatEx2(pVolumeMF3, wFSName, usFsVersion, ClusterSize, wLabel, Flags, &pAsync);
    while (SUCCEEDED(hr)) {
     if (IS_ERROR(FormatStatus)) {
      IVdsAsync_Cancel(pAsync);
      break;
     }
     hr = IVdsAsync_QueryStatus(pAsync, &hr2, &ulPercentCompleted);
     if (SUCCEEDED(hr)) {
      if (Flags & FP_QUICK) {

       PrintInfo(0, MSG_218, (ulPercentCompleted < 100) ? 1 : 2, 2);
       UpdateProgress(OP_CREATE_FS, (float)ulPercentCompleted);
      } else {
       UpdateProgressWithInfo(OP_FORMAT, MSG_217, ulPercentCompleted, 100);
      }
      hr = hr2;
      if (hr == S_OK)
       break;
      if (hr == VDS_E_OPERATION_PENDING)
       hr = S_OK;
     }
     Sleep(500);
    }
    if (!SUCCEEDED(hr)) {
     VDS_SET_ERROR(hr);
     uprintf("Could not format drive: %s", WindowsErrorString());
     goto out;
    }

    IVdsAsync_Release(pAsync);
    IVdsVolumeMF3_Release(pVolumeMF3);

    if (!IS_ERROR(FormatStatus)) {
     uprintf("Format completed.");
     r = TRUE;
    }
    goto out;
   }
  }
 }

out:
 if ((!bFoundVolume) && (FormatStatus == 0))
  FormatStatus = ERROR_SEVERITY_ERROR | FAC(FACILITY_STORAGE) | ERROR_PATH_NOT_FOUND;
 safe_free(VolumeName);
 safe_free(wVolumeName);
 safe_free(wLabel);
 safe_free(wFSName);
 return r;
}
