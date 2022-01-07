
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;
typedef int BOOL ;


 int FALSE ;
 int GetLastError () ;
 int LoadLibraryA (char*) ;
 int SET (int *,char*) ;
 int TRUE ;
 int * pMSVCRTD_operator_delete ;
 int * pMSVCRTD_operator_new_dbg ;
 int trace (char*,int ) ;

__attribute__((used)) static BOOL init_functions(void)
{
  HMODULE hModule = LoadLibraryA("msvcrtd.dll");

  if (!hModule) {
    trace("LoadLibraryA failed to load msvcrtd.dll with GLE=%d\n", GetLastError());
    return FALSE;
  }

  if (sizeof(void *) > sizeof(int))
  {
      SET(pMSVCRTD_operator_new_dbg, "??2@YAPEAX_KHPEBDH@Z");
      SET(pMSVCRTD_operator_delete, "??3@YAXPEAX@Z");
  }
  else
  {
      SET(pMSVCRTD_operator_new_dbg, "??2@YAPAXIHPBDH@Z");
      SET(pMSVCRTD_operator_delete, "??3@YAXPAX@Z");
  }

  if (pMSVCRTD_operator_new_dbg == ((void*)0))
    return FALSE;

  return TRUE;
}
