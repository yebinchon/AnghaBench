
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_6__ {int ullOffset; int ullSize; int ulPartitionNumber; } ;
typedef TYPE_1__ VDS_PARTITION_PROP ;
struct TYPE_7__ {int pwszName; } ;
typedef TYPE_2__ VDS_DISK_PROP ;
typedef int ULONG ;
typedef size_t LONG ;
typedef int IVdsSwProvider ;
typedef int IVdsServiceLoader ;
typedef int IVdsService ;
typedef int IVdsProvider ;
typedef int IVdsPack ;
typedef int IVdsDisk ;
typedef int IVdsAsync ;
typedef int IVdsAdvancedDisk ;
typedef int IUnknown ;
typedef int IEnumVdsObject ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int BOOL ;


 int ARRAYSIZE (int *) ;
 int CLSCTX_LOCAL_SERVER ;
 int CLSCTX_REMOTE_SERVER ;
 int CLSID_VdsLoader ;
 int COINIT_APARTMENTTHREADED ;
 int CheckDriveIndex (int ) ;
 scalar_t__ CoCreateInstance (int *,int *,int,int *,void**) ;
 int CoInitializeEx (int *,int ) ;
 int CoInitializeSecurity (int *,int,int *,int *,int ,int ,int *,int ,int *) ;
 int CoTaskMemFree (TYPE_1__*) ;
 scalar_t__ E_FAIL ;
 int FALSE ;
 int FormatStatus ;
 scalar_t__ IEnumVdsObject_Next (int *,int,int **,int *) ;
 int IGNORE_RETVAL (int ) ;
 int IID_IVdsAdvancedDisk ;
 int IID_IVdsDisk ;
 int IID_IVdsPack ;
 int IID_IVdsProvider ;
 int IID_IVdsServiceLoader ;
 int IID_IVdsSwProvider ;
 scalar_t__ IS_ERROR (int ) ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ IVdsAdvancedDisk_Clean (int *,int ,int ,int ,int **) ;
 scalar_t__ IVdsAdvancedDisk_DeletePartition (int *,int ,int ,int ) ;
 scalar_t__ IVdsAdvancedDisk_QueryPartitions (int *,TYPE_1__**,size_t*) ;
 int IVdsAdvancedDisk_Release (int *) ;
 int IVdsAsync_Cancel (int *) ;
 scalar_t__ IVdsAsync_QueryStatus (int *,scalar_t__*,int *) ;
 scalar_t__ IVdsDisk_GetProperties (int *,TYPE_2__*) ;
 scalar_t__ IVdsDisk_QueryInterface (int *,int *,void**) ;
 int IVdsDisk_Release (int *) ;
 scalar_t__ IVdsPack_QueryDisks (int *,int **) ;
 int IVdsProvider_Release (int *) ;
 scalar_t__ IVdsServiceLoader_LoadService (int *,char*,int **) ;
 int IVdsServiceLoader_Release (int *) ;
 scalar_t__ IVdsService_QueryProviders (int *,int ,int **) ;
 scalar_t__ IVdsService_WaitForServiceReady (int *) ;
 scalar_t__ IVdsSwProvider_QueryInterface (int *,int *,void**) ;
 scalar_t__ IVdsSwProvider_QueryPacks (int *,int **) ;
 int IVdsSwProvider_Release (int *) ;
 int RPC_C_AUTHN_LEVEL_CONNECT ;
 int RPC_C_IMP_LEVEL_IMPERSONATE ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int SizeToHumanReadable (int ,int ,int ) ;
 int Sleep (int) ;
 int TRUE ;
 scalar_t__ VDS_E_OPERATION_PENDING ;
 int VDS_QUERY_SOFTWARE_PROVIDERS ;
 int VDS_SET_ERROR (scalar_t__) ;
 int WindowsErrorString () ;
 scalar_t__ _wcsicmp (int *,int ) ;
 int uprintf (char*,int ,...) ;
 int wnsprintf (int *,int ,char*,int ) ;

BOOL DeletePartitions(DWORD DriveIndex)
{
 BOOL r = FALSE;
 HRESULT hr;
 ULONG ulFetched;
 wchar_t wPhysicalName[24];
 IVdsServiceLoader *pLoader;
 IVdsService *pService;
 IEnumVdsObject *pEnum;
 IUnknown *pUnk;

 CheckDriveIndex(DriveIndex);
 wnsprintf(wPhysicalName, ARRAYSIZE(wPhysicalName), L"\\\\?\\PhysicalDrive%lu", DriveIndex);


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
   IEnumVdsObject *pEnumDisk;
   IUnknown *pDiskUnk;

   hr = IUnknown_QueryInterface(pPackUnk, &IID_IVdsPack, (void **)&pPack);
   IUnknown_Release(pPackUnk);
   if (hr != S_OK) {
    VDS_SET_ERROR(hr);
    uprintf("Could not query VDS Software Provider Pack: %s", WindowsErrorString());
    goto out;
   }


   hr = IVdsPack_QueryDisks(pPack, &pEnumDisk);
   if (hr != S_OK) {
    VDS_SET_ERROR(hr);
    uprintf("Could not query VDS disks: %s", WindowsErrorString());
    goto out;
   }


   while (IEnumVdsObject_Next(pEnumDisk, 1, &pDiskUnk, &ulFetched) == S_OK) {
    VDS_DISK_PROP diskprop;
    VDS_PARTITION_PROP* prop_array;
    LONG i, prop_array_size;
    IVdsDisk *pDisk;
    IVdsAdvancedDisk *pAdvancedDisk;


    hr = IUnknown_QueryInterface(pDiskUnk, &IID_IVdsDisk, (void **)&pDisk);
    if (hr != S_OK) {
     VDS_SET_ERROR(hr);
     uprintf("Could not query VDS Disk Interface: %s", WindowsErrorString());
     goto out;
    }


    hr = IVdsDisk_GetProperties(pDisk, &diskprop);
    if (hr != S_OK) {
     VDS_SET_ERROR(hr);
     uprintf("Could not query VDS Disk Properties: %s", WindowsErrorString());
     goto out;
    }


    if (_wcsicmp(wPhysicalName, diskprop.pwszName) != 0) {
     IVdsDisk_Release(pDisk);
     continue;
    }


    hr = IVdsDisk_QueryInterface(pDisk, &IID_IVdsAdvancedDisk, (void **)&pAdvancedDisk);
    IVdsDisk_Release(pDisk);
    if (hr != S_OK) {
     VDS_SET_ERROR(hr);
     uprintf("Could not access VDS Advanced Disk interface: %s", WindowsErrorString());
     goto out;
    }


    hr = IVdsAdvancedDisk_QueryPartitions(pAdvancedDisk, &prop_array, &prop_array_size);
    if (hr == S_OK) {
     uprintf("Deleting ALL partition(s) from disk '%S':", diskprop.pwszName);

     for (i = 0; i < prop_array_size; i++) {
      uprintf("● Partition %d (offset: %lld, size: %s)", prop_array[i].ulPartitionNumber,
       prop_array[i].ullOffset, SizeToHumanReadable(prop_array[i].ullSize, FALSE, FALSE));
      hr = IVdsAdvancedDisk_DeletePartition(pAdvancedDisk, prop_array[i].ullOffset, TRUE, TRUE);
      if (hr != S_OK) {
       r = FALSE;
       VDS_SET_ERROR(hr);
       uprintf("Could not delete partitions: %s", WindowsErrorString());
      }
     }
     r = TRUE;
    } else {
     uprintf("No partition to delete on disk '%S'", diskprop.pwszName);
     r = TRUE;
    }
    CoTaskMemFree(prop_array);
    IVdsAdvancedDisk_Release(pAdvancedDisk);
    goto out;
   }
  }
 }

out:
 return r;
}
