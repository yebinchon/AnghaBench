
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HRSRC ;
typedef int HMODULE ;
typedef int * HGLOBAL ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int * FindResourceA (int ,char*,char*) ;
 int * LoadResource (int ,int *) ;
 scalar_t__ LockResource (int *) ;
 int SizeofResource (int ,int *) ;
 int WindowsErrorString () ;
 scalar_t__ malloc (int ) ;
 int memcpy (unsigned char*,scalar_t__,int ) ;
 int uprintf (char*,char const*,...) ;

unsigned char* GetResource(HMODULE module, char* name, char* type, const char* desc, DWORD* len, BOOL duplicate)
{
 HGLOBAL res_handle;
 HRSRC res;
 unsigned char* p = ((void*)0);

 res = FindResourceA(module, name, type);
 if (res == ((void*)0)) {
  uprintf("Could not locate resource '%s': %s\n", desc, WindowsErrorString());
  goto out;
 }
 res_handle = LoadResource(module, res);
 if (res_handle == ((void*)0)) {
  uprintf("Could not load resource '%s': %s\n", desc, WindowsErrorString());
  goto out;
 }
 *len = SizeofResource(module, res);

 if (duplicate) {
  p = (unsigned char*)malloc(*len);
  if (p == ((void*)0)) {
   uprintf("Coult not allocate resource '%s'\n", desc);
   goto out;
  }
  memcpy(p, LockResource(res_handle), *len);
 } else {
  p = (unsigned char*)LockResource(res_handle);
 }

out:
 return p;
}
