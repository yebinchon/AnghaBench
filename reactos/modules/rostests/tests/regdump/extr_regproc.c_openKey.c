
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPTSTR ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int KEY_ALL_ACCESS ;
 int REG_OPTION_NON_VOLATILE ;
 scalar_t__ RegCreateKeyEx (scalar_t__,int *,int ,int *,int ,int ,int *,int *,int *) ;
 int TRUE ;
 int bTheKeyIsOpen ;
 scalar_t__ currentKeyClass ;
 int currentKeyHandle ;
 int * currentKeyName ;
 scalar_t__ getRegClass (int *) ;
 int * getRegKeyName (int *) ;

HRESULT openKey(LPTSTR stdInput)
{
  DWORD dwDisp;
  HRESULT hRes;


  if (stdInput == ((void*)0))
    return ERROR_INVALID_PARAMETER;


  currentKeyClass = getRegClass(stdInput);
  if (currentKeyClass == (HKEY)ERROR_INVALID_PARAMETER)
    return (HRESULT)ERROR_INVALID_PARAMETER;


  currentKeyName = getRegKeyName(stdInput);
  if (currentKeyName == ((void*)0))
    return ERROR_INVALID_PARAMETER;

  hRes = RegCreateKeyEx(
          currentKeyClass,
          currentKeyName,
          0,
          ((void*)0),
          REG_OPTION_NON_VOLATILE,
          KEY_ALL_ACCESS,
          ((void*)0),
          &currentKeyHandle,
          &dwDisp);


  if (hRes == ERROR_SUCCESS)
    bTheKeyIsOpen = TRUE;

  return hRes;

}
