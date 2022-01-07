
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int IVdsServiceLoader ;
typedef int IVdsService ;
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
 int FALSE ;
 int IGNORE_RETVAL (int ) ;
 int IID_IVdsServiceLoader ;
 scalar_t__ IVdsServiceLoader_LoadService (int *,char*,int **) ;
 int IVdsServiceLoader_Release (int *) ;
 scalar_t__ IVdsService_CleanupObsoleteMountPoints (int *) ;
 scalar_t__ IVdsService_QueryProviders (int *,int ,int **) ;
 scalar_t__ IVdsService_Reenumerate (int *) ;
 scalar_t__ IVdsService_Refresh (int *) ;
 scalar_t__ IVdsService_WaitForServiceReady (int *) ;
 int RPC_C_AUTHN_LEVEL_CONNECT ;
 int RPC_C_IMP_LEVEL_IMPERSONATE ;
 scalar_t__ S_OK ;
 int TRUE ;
 int VDS_QUERY_SOFTWARE_PROVIDERS ;
 int VDS_SET_ERROR (scalar_t__) ;
 int WindowsErrorString () ;
 int uprintf (char*,int ) ;
 int wnsprintf (int *,int ,char*,int ) ;

BOOL RefreshLayout(DWORD DriveIndex)
{
 BOOL r = FALSE;
 HRESULT hr;
 wchar_t wPhysicalName[24];
 IVdsServiceLoader *pLoader;
 IVdsService *pService;
 IEnumVdsObject *pEnum;

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


 hr = IVdsService_CleanupObsoleteMountPoints(pService);
 if (hr != S_OK) {
  VDS_SET_ERROR(hr);
  uprintf("Could not clean up VDS mountpoints: %s", WindowsErrorString());
  goto out;
 }


 hr = IVdsService_Refresh(pService);
 if (hr != S_OK) {
  VDS_SET_ERROR(hr);
  uprintf("Could not refresh VDS layout: %s", WindowsErrorString());
  goto out;
 }


 hr = IVdsService_Reenumerate(pService);
 if (hr != S_OK) {
  VDS_SET_ERROR(hr);
  uprintf("Could not refresh VDS layout: %s", WindowsErrorString());
  goto out;
 }
 r = TRUE;

 out:
  return r;
}
