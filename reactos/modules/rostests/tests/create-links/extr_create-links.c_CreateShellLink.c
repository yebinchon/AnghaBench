
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_17__ {TYPE_1__* lpVtbl; } ;
struct TYPE_16__ {TYPE_2__* lpVtbl; } ;
struct TYPE_15__ {int (* Release ) (TYPE_3__*) ;scalar_t__ (* QueryInterface ) (TYPE_3__*,int *,int *) ;scalar_t__ (* SetDescription ) (TYPE_3__*,char*) ;scalar_t__ (* SetIconLocation ) (TYPE_3__*,char*,int) ;scalar_t__ (* SetWorkingDirectory ) (TYPE_3__*,char*) ;scalar_t__ (* SetArguments ) (TYPE_3__*,char*) ;scalar_t__ (* SetPath ) (TYPE_3__*,char*) ;} ;
struct TYPE_14__ {int (* Release ) (TYPE_4__*) ;scalar_t__ (* Save ) (TYPE_4__*,int *,int ) ;} ;
typedef int LPVOID ;
typedef char* LPCSTR ;
typedef TYPE_3__ IShellLinkA ;
typedef TYPE_4__ IPersistFile ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_ShellLink ;
 int CP_ACP ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,int *) ;
 int IID_IPersistFile ;
 int IID_IShellLink ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 int TRUE ;
 int printf (char*,...) ;
 scalar_t__ stub1 (TYPE_3__*,char*) ;
 scalar_t__ stub2 (TYPE_3__*,char*) ;
 scalar_t__ stub3 (TYPE_3__*,char*) ;
 scalar_t__ stub4 (TYPE_3__*,char*,int) ;
 scalar_t__ stub5 (TYPE_3__*,char*) ;
 scalar_t__ stub6 (TYPE_3__*,int *,int *) ;
 scalar_t__ stub7 (TYPE_4__*,int *,int ) ;
 int stub8 (TYPE_4__*) ;
 int stub9 (TYPE_3__*) ;

HRESULT CreateShellLink(LPCSTR linkPath, LPCSTR cmd, LPCSTR arg, LPCSTR dir, LPCSTR iconPath, int icon_nr, LPCSTR comment)
{
 IShellLinkA* psl;
 IPersistFile* ppf;
 WCHAR buffer[MAX_PATH];

 HRESULT hr = CoCreateInstance(&CLSID_ShellLink, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IShellLink, (LPVOID*)&psl);

 printf("creating shortcut file '%s' to %s...\n", linkPath, cmd);

 if (SUCCEEDED(hr)) {
  hr = psl->lpVtbl->SetPath(psl, cmd);

  if (arg)
   hr = psl->lpVtbl->SetArguments(psl, arg);

  if (dir)
   hr = psl->lpVtbl->SetWorkingDirectory(psl, dir);

  if (iconPath)
   hr = psl->lpVtbl->SetIconLocation(psl, iconPath, icon_nr);

  if (comment)
   hr = psl->lpVtbl->SetDescription(psl, comment);

  hr = psl->lpVtbl->QueryInterface(psl, &IID_IPersistFile, (LPVOID*)&ppf);

  if (SUCCEEDED(hr)) {
   MultiByteToWideChar(CP_ACP, 0, linkPath, -1, buffer, MAX_PATH);

   hr = ppf->lpVtbl->Save(ppf, buffer, TRUE);

   ppf->lpVtbl->Release(ppf);
  }

  psl->lpVtbl->Release(psl);
 }

 if (SUCCEEDED(hr))
  printf("OK\n\n");
 else
  printf("error %08x\n\n", (int) hr);

 return hr;
}
