
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* TCHAR ;
typedef scalar_t__ DWORD ;


 int DisplayScreen () ;
 scalar_t__ GetConsoleMode (scalar_t__,int *) ;
 int GetInputOutputHandles () ;
 int GetNumberOfConsoleInputEvents (scalar_t__,scalar_t__*) ;
 int IDS_APP_TITLE ;
 int IDS_COLUMN_CPU ;
 int IDS_COLUMN_IMAGENAME ;
 int IDS_COLUMN_MEM ;
 int IDS_COLUMN_MEM_UNIT ;
 int IDS_COLUMN_NUMBER ;
 int IDS_COLUMN_PF ;
 int IDS_COLUMN_PID ;
 int IDS_CTM_GENERAL_ERR1 ;
 int IDS_CTM_GENERAL_ERR2 ;
 int IDS_CTM_GENERAL_ERR3 ;
 int IDS_IDLE_PROCESS ;
 int IDS_MENU ;
 int IDS_MENU_KILL_PROCESS ;
 int IDS_MENU_QUIT ;
 int IDS_NO ;
 int IDS_YES ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 void* KEY_KILL ;
 void* KEY_NO ;
 void* KEY_QUIT ;
 void* KEY_YES ;
 scalar_t__ LoadString (scalar_t__,int ,void**,int) ;
 int PerfDataRefresh () ;
 int PerfInit () ;
 scalar_t__ ProcessKeys (scalar_t__) ;
 int RestoreConsole () ;
 int SetConsoleMode (scalar_t__,int ) ;
 scalar_t__ TRUE ;
 int WaitForSingleObject (scalar_t__,int) ;
 void* _T (char) ;
 int _tcslen (void**) ;
 int _tcsncpy (void**,void**,int) ;
 int _tprintf (void**) ;
 int* columnRightPositions ;
 scalar_t__ first ;
 scalar_t__ hInst ;
 scalar_t__ hStdin ;
 scalar_t__ hStdout ;
 int inConMode ;
 void** lpEmpty ;
 void** lpHeader ;
 void** lpIdleProcess ;
 void** lpMemUnit ;
 void** lpMenu ;
 void** lpSeparator ;
 void** lpSeparatorDown ;
 void** lpSeparatorUp ;
 void** lpTitle ;
 int outConMode ;

int _tmain(int argc, char **argv)
{
 int i;
 TCHAR lpStr[80];

 for (i = 0; i < 80; i++)
  lpEmpty[i] = lpHeader[i] = _T(' ');
 lpEmpty[79] = _T('\0');


 hInst = 0 ;

 if (LoadString(hInst, IDS_COLUMN_NUMBER, lpStr, 80))
 {
  columnRightPositions[0] = _tcslen(lpStr) + 3;
  _tcsncpy(&lpHeader[2], lpStr, _tcslen(lpStr));
 }
 if (LoadString(hInst, IDS_COLUMN_IMAGENAME, lpStr, 80))
 {
  columnRightPositions[1] = columnRightPositions[0] + _tcslen(lpStr) + 3;
  _tcsncpy(&lpHeader[columnRightPositions[0] + 2], lpStr, _tcslen(lpStr));
 }
 if (LoadString(hInst, IDS_COLUMN_PID, lpStr, 80))
 {
  columnRightPositions[2] = columnRightPositions[1] + _tcslen(lpStr) + 3;
  _tcsncpy(&lpHeader[columnRightPositions[1] + 2], lpStr, _tcslen(lpStr));
 }
 if (LoadString(hInst, IDS_COLUMN_CPU, lpStr, 80))
 {
  columnRightPositions[3] = columnRightPositions[2] + _tcslen(lpStr) + 3;
  _tcsncpy(&lpHeader[columnRightPositions[2] + 2], lpStr, _tcslen(lpStr));
 }
 if (LoadString(hInst, IDS_COLUMN_MEM, lpStr, 80))
 {
  columnRightPositions[4] = columnRightPositions[3] + _tcslen(lpStr) + 3;
  _tcsncpy(&lpHeader[columnRightPositions[3] + 2], lpStr, _tcslen(lpStr));
 }
 if (LoadString(hInst, IDS_COLUMN_PF, lpStr, 80))
 {
  columnRightPositions[5] = columnRightPositions[4] + _tcslen(lpStr) + 3;
  _tcsncpy(&lpHeader[columnRightPositions[4] + 2], lpStr, _tcslen(lpStr));
 }

 for (i = 0; i < columnRightPositions[5]; i++)
 {
  lpSeparator[i] = _T('-');
  lpSeparatorUp[i] = _T('^');
  lpSeparatorDown[i] = _T('v');
 }
 lpHeader[0] = _T('|');
 lpSeparator[0] = _T('+');
 lpSeparatorUp[0] = _T('^');
 lpSeparatorDown[0] = _T('v');
 for (i = 0; i < 6; i++)
 {
  lpHeader[columnRightPositions[i]] = _T('|');
  lpSeparator[columnRightPositions[i]] = _T('+');
  lpSeparatorUp[columnRightPositions[i]] = _T('^');
  lpSeparatorDown[columnRightPositions[i]] = _T('v');
 }
 lpHeader[columnRightPositions[5] + 1] = _T('\0');
 lpSeparator[columnRightPositions[5] + 1] = _T('\0');
 lpSeparatorUp[columnRightPositions[5] + 1] = _T('\0');
 lpSeparatorDown[columnRightPositions[5] + 1] = _T('\0');


 if (!LoadString(hInst, IDS_APP_TITLE, lpTitle, 80))
  lpTitle[0] = _T('\0');
 if (!LoadString(hInst, IDS_COLUMN_MEM_UNIT, lpMemUnit, 3))
  lpMemUnit[0] = _T('\0');
 if (!LoadString(hInst, IDS_MENU, lpMenu, 80))
  lpMenu[0] = _T('\0');
 if (!LoadString(hInst, IDS_IDLE_PROCESS, lpIdleProcess, 80))
  lpIdleProcess[0] = _T('\0');

 if (LoadString(hInst, IDS_MENU_QUIT, lpStr, 2))
  KEY_QUIT = lpStr[0];
 if (LoadString(hInst, IDS_MENU_KILL_PROCESS, lpStr, 2))
  KEY_KILL = lpStr[0];
 if (LoadString(hInst, IDS_YES, lpStr, 2))
  KEY_YES = lpStr[0];
 if (LoadString(hInst, IDS_NO, lpStr, 2))
  KEY_NO = lpStr[0];

 GetInputOutputHandles();

 if (hStdin == INVALID_HANDLE_VALUE || hStdout == INVALID_HANDLE_VALUE)
 {
  if (LoadString(hInst, IDS_CTM_GENERAL_ERR1, lpStr, 80))
   _tprintf(lpStr);
  return -1;
 }

 if (GetConsoleMode(hStdin, &inConMode) == 0)
 {
  if (LoadString(hInst, IDS_CTM_GENERAL_ERR2, lpStr, 80))
   _tprintf(lpStr);
  return -1;
 }

 if (GetConsoleMode(hStdout, &outConMode) == 0)
 {
  if (LoadString(hInst, IDS_CTM_GENERAL_ERR3, lpStr, 80))
   _tprintf(lpStr);
  return -1;
 }

 SetConsoleMode(hStdin, 0);
 SetConsoleMode(hStdout, 0);

 PerfInit();

 while (1)
 {
  DWORD numEvents;

  PerfDataRefresh();
  DisplayScreen();


  WaitForSingleObject(hStdin, 1000);
  GetNumberOfConsoleInputEvents(hStdin, &numEvents);

  if (numEvents > 0)
  {
   if (ProcessKeys(numEvents) == TRUE)
    break;
   first = 0;
  }
 }

 RestoreConsole();
 return 0;
}
