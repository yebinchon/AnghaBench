
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int unit ;
typedef char WCHAR ;
typedef int UINT ;
struct TYPE_2__ {int hInstance; } ;
typedef int LPWSTR ;
typedef int LONGLONG ;
typedef int DWORD ;


 TYPE_1__ Globals ;
 int IDS_UNIT_GB ;
 int IDS_UNIT_KB ;
 int IDS_UNIT_MB ;
 int LoadStringW (int ,int ,char*,int) ;
 int sprintfW (int ,char const*,float,...) ;

__attribute__((used)) static void format_bytes(LPWSTR buffer, LONGLONG bytes)
{
 static const WCHAR sFmtSmall[] = {'%', 'u', 0};
 static const WCHAR sFmtBig[] = {'%', '.', '1', 'f', ' ', '%', 's', '\0'};

 if (bytes < 1024)
  sprintfW(buffer, sFmtSmall, (DWORD)bytes);
 else
 {
  WCHAR unit[64];
  UINT resid;
  float fBytes;
  if (bytes >= 1073741824)
  {
   fBytes = ((float)bytes)/1073741824.f+.5f;
   resid = IDS_UNIT_GB;
  }
  else if (bytes >= 1048576)
  {
   fBytes = ((float)bytes)/1048576.f+.5f;
   resid = IDS_UNIT_MB;
  }
  else
  {
   fBytes = ((float)bytes)/1024.f+.5f;
   resid = IDS_UNIT_KB;
  }
  LoadStringW(Globals.hInstance, resid, unit, sizeof(unit)/sizeof(*unit));
  sprintfW(buffer, sFmtBig, fBytes, unit);
 }
}
