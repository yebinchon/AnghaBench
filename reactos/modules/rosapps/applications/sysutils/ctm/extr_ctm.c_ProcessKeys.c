
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ProcessId; } ;
struct TYPE_4__ {int X; scalar_t__ Y; } ;
typedef scalar_t__ TCHAR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef TYPE_1__ COORD ;


 int CloseHandle (scalar_t__) ;
 int FALSE ;
 scalar_t__ GetKeyPressed (int) ;
 int GetNumberOfConsoleInputEvents (int ,int*) ;
 int IDS_KILL_PROCESS ;
 int IDS_KILL_PROCESS_ERR1 ;
 int IDS_KILL_PROCESS_ERR2 ;
 scalar_t__ KEY_KILL ;
 scalar_t__ KEY_NO ;
 scalar_t__ KEY_QUIT ;
 scalar_t__ KEY_YES ;
 scalar_t__ LoadString (int ,int ,scalar_t__*,int) ;
 scalar_t__ OpenProcess (int ,int,int) ;
 int PROCESS_TERMINATE ;
 int ProcPerScreen ;
 int ProcessCount ;
 scalar_t__ ScreenLines ;
 int Sleep (int) ;
 int TRUE ;
 int TerminateProcess (scalar_t__,int ) ;
 scalar_t__ VK_DOWN ;
 scalar_t__ VK_END ;
 scalar_t__ VK_HOME ;
 scalar_t__ VK_NEXT ;
 scalar_t__ VK_PRIOR ;
 scalar_t__ VK_UP ;
 int WriteConsoleOutputCharacter (int ,scalar_t__*,int ,TYPE_1__,int*) ;
 int _stprintf (scalar_t__*,scalar_t__*,int) ;
 int _tcslen (scalar_t__*) ;
 scalar_t__ first ;
 int hInst ;
 int hStdin ;
 int hStdout ;
 scalar_t__* lpEmpty ;
 TYPE_2__* pPerfData ;
 int scrolled ;
 int selection ;

int ProcessKeys(int numEvents)
{
 DWORD numChars;
 TCHAR key;
 if ((ProcessCount-scrolled < 17) && (ProcessCount > 17))
  scrolled = ProcessCount-17;

 key = GetKeyPressed(numEvents);
 if (key == KEY_QUIT)
  return TRUE;
 else if (key == KEY_KILL)
 {

  DWORD pId;
  COORD pos;
  TCHAR lpStr[100];

  pos.X = 1; pos.Y =ScreenLines-1;
  if (LoadString(hInst, IDS_KILL_PROCESS, lpStr, 100))
   WriteConsoleOutputCharacter(hStdout, lpStr, _tcslen(lpStr), pos, &numChars);

  do {
   GetNumberOfConsoleInputEvents(hStdin, &pId);
   key = GetKeyPressed(pId);
  } while (key != KEY_YES && key != KEY_NO);

  if (key == KEY_YES)
  {
   HANDLE hProcess;
   pId = pPerfData[selection+scrolled].ProcessId;
   hProcess = OpenProcess(PROCESS_TERMINATE, FALSE, pId);

   if (hProcess)
   {
    if (!TerminateProcess(hProcess, 0))
    {
     if (LoadString(hInst, IDS_KILL_PROCESS_ERR1, lpStr, 80))
     {
      WriteConsoleOutputCharacter(hStdout, lpEmpty, _tcslen(lpEmpty), pos, &numChars);
      WriteConsoleOutputCharacter(hStdout, lpStr, _tcslen(lpStr), pos, &numChars);
     }
     Sleep(1000);
    }

    CloseHandle(hProcess);
   }
   else
   {
    if (LoadString(hInst, IDS_KILL_PROCESS_ERR2, lpStr, 80))
    {
     WriteConsoleOutputCharacter(hStdout, lpEmpty, _tcslen(lpEmpty), pos, &numChars);
     _stprintf(lpStr, lpStr, pId);
     WriteConsoleOutputCharacter(hStdout, lpStr, _tcslen(lpStr), pos, &numChars);
    }
    Sleep(1000);
   }
  }

  first = 0;
 }
 else if (key == VK_UP)
 {
  if (selection > 0)
   selection--;
  else if ((selection == 0) && (scrolled > 0))
   scrolled--;
 }
 else if (key == VK_DOWN)
 {
  if ((selection < ProcPerScreen-1) && (selection < ProcessCount-1))
   selection++;
  else if ((selection == ProcPerScreen-1) && (selection+scrolled < ProcessCount-1))
   scrolled++;
 }
 else if (key == VK_PRIOR)
 {
  if (scrolled>ProcPerScreen-1)
   scrolled-=ProcPerScreen-1;
  else
  {
   scrolled=0;
   selection=0;
  }

 }
 else if (key == VK_NEXT)
 {
  scrolled+=ProcPerScreen-1;
  if (scrolled>ProcessCount-ProcPerScreen)
  {
   scrolled=ProcessCount-ProcPerScreen;
   selection=ProcPerScreen-1;
  }


  if (ProcessCount<=ProcPerScreen)
  {
   scrolled=0;
   selection=(ProcessCount%ProcPerScreen)-1;
  }
 }
 else if (key == VK_HOME)
 {
  selection=0;
  scrolled=0;
 }
 else if (key == VK_END)
 {
  selection=ProcPerScreen-1;
  scrolled=ProcessCount-ProcPerScreen;
  if (ProcessCount<=ProcPerScreen)
  {
   scrolled=0;
   selection=(ProcessCount%ProcPerScreen)-1;
  }
 }
 return FALSE;
}
