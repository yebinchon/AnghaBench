
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int *) ;
 scalar_t__ RegQueryValueEx (int ,int ,int ,int*,int ,int*) ;
 int SetDefaults () ;
 int _T (char*) ;
 int dRotate ;
 int registryPath ;

void ReadRegistry(){
 LONG result;
 HKEY skey;
 DWORD valtype, valsize, val;

 SetDefaults();

 result = RegOpenKeyEx(HKEY_CURRENT_USER, registryPath, 0, KEY_READ, &skey);
 if(result != ERROR_SUCCESS)
  return;

 valsize=sizeof(val);

 result = RegQueryValueEx(skey, _T("Rotate"), 0, &valtype, (LPBYTE)&val, &valsize);
 if(result == ERROR_SUCCESS)
  dRotate = val;
 RegCloseKey(skey);
}
