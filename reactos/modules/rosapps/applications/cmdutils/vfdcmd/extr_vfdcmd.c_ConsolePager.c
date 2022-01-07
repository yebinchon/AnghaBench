
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int prompt ;
typedef int input ;
typedef int WORD ;
struct TYPE_21__ {short X; } ;
struct TYPE_15__ {int X; } ;
struct TYPE_14__ {int Bottom; int Top; } ;
struct TYPE_20__ {int wAttributes; TYPE_8__ dwCursorPosition; TYPE_2__ dwSize; TYPE_1__ srWindow; } ;
struct TYPE_16__ {scalar_t__ AsciiChar; } ;
struct TYPE_17__ {TYPE_3__ uChar; int bKeyDown; } ;
struct TYPE_18__ {TYPE_4__ KeyEvent; } ;
struct TYPE_19__ {scalar_t__ EventType; TYPE_5__ Event; } ;
typedef TYPE_6__ INPUT_RECORD ;
typedef int HANDLE ;
typedef int DWORD ;
typedef TYPE_7__ CONSOLE_SCREEN_BUFFER_INFO ;
typedef scalar_t__ BOOL ;


 int COMMON_LVB_REVERSE_VIDEO ;
 int ENABLE_PROCESSED_INPUT ;
 scalar_t__ FALSE ;
 int FORMAT_MESSAGE_FROM_HMODULE ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FillConsoleOutputAttribute (int ,int,int,TYPE_8__,int*) ;
 int FillConsoleOutputCharacter (int ,char,int,TYPE_8__,int*) ;
 int FlushConsoleInputBuffer (int ) ;
 int FormatMessage (int,int *,int ,int ,char*,int,int *) ;
 int GetConsoleMode (int ,int*) ;
 int GetConsoleScreenBufferInfo (int ,TYPE_7__*) ;
 int GetStdHandle (int ) ;
 scalar_t__ KEY_EVENT ;
 int MSG_PAGER_PROMPT ;
 int ReadConsoleInput (int ,TYPE_6__*,int,int*) ;
 int STD_INPUT_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int SetConsoleCursorPosition (int ,TYPE_8__) ;
 int SetConsoleMode (int ,int) ;
 scalar_t__ TRUE ;
 scalar_t__ VK_CANCEL ;
 scalar_t__ VK_ESCAPE ;
 int WriteConsoleOutputCharacter (int ,char*,int,TYPE_8__,int*) ;
 int printf (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char tolower (scalar_t__) ;

BOOL ConsolePager(char *pBuffer, BOOL bReset)
{
 static int rows = 0;
 char prompt[80];
 int prompt_len = 0;
 HANDLE hStdOut;
 HANDLE hStdIn;




 hStdOut = GetStdHandle(STD_OUTPUT_HANDLE);
 hStdIn = GetStdHandle(STD_INPUT_HANDLE);

 for (;;) {
  CONSOLE_SCREEN_BUFFER_INFO info;
  INPUT_RECORD input;
  DWORD result;
  DWORD mode;
  int cols;
  char *cur;
  char save;




  GetConsoleScreenBufferInfo(hStdOut, &info);

  if (bReset || rows <= 0) {
   rows = info.srWindow.Bottom - info.srWindow.Top - 1;
  }

  cols = info.dwSize.X;



  if (rows <= 0) {

   printf("%s", pBuffer);
   break;
  }




  cur = pBuffer;
  save = '\0';

  while (*cur) {
   if (*(cur++) == '\n' || (cols--) == 0) {

    if (--rows == 0) {


     save = *cur;
     *cur = '\0';
     break;
    }

    cols = info.dwSize.X;
   }
  }


  printf("%s", pBuffer);


  if (save == '\0') {
   break;
  }







  if (prompt_len == 0) {

   prompt_len = FormatMessage(
    FORMAT_MESSAGE_FROM_HMODULE |
    FORMAT_MESSAGE_IGNORE_INSERTS,
    ((void*)0), MSG_PAGER_PROMPT, 0,
    prompt, sizeof(prompt), ((void*)0));

   if (prompt_len == 0) {
    strcpy(prompt, "Press any key to continue...");
    prompt_len = strlen(prompt);
   }
  }



  GetConsoleMode(hStdIn, &mode);



  SetConsoleMode(hStdIn, (mode & ~ENABLE_PROCESSED_INPUT));



  GetConsoleScreenBufferInfo(hStdOut, &info);



  WriteConsoleOutputCharacter(hStdOut, prompt,
   prompt_len, info.dwCursorPosition, &result);



  FillConsoleOutputAttribute(hStdOut,
   (WORD)(info.wAttributes | COMMON_LVB_REVERSE_VIDEO),
   prompt_len, info.dwCursorPosition, &result);



  info.dwCursorPosition.X =
   (short)(info.dwCursorPosition.X + prompt_len);

  SetConsoleCursorPosition(hStdOut, info.dwCursorPosition);



  FlushConsoleInputBuffer(hStdIn);

  do {
   ReadConsoleInput(hStdIn, &input, sizeof(input), &result);
  }
  while (input.EventType != KEY_EVENT ||
   !input.Event.KeyEvent.bKeyDown ||
   !input.Event.KeyEvent.uChar.AsciiChar);



  info.dwCursorPosition.X =
   (short)(info.dwCursorPosition.X - prompt_len);

  SetConsoleCursorPosition(hStdOut, info.dwCursorPosition);



  FillConsoleOutputCharacter(hStdOut, ' ',
   prompt_len, info.dwCursorPosition, &result);



  FillConsoleOutputAttribute(hStdOut, info.wAttributes,
   prompt_len, info.dwCursorPosition, &result);



  SetConsoleMode(hStdIn, mode);



  if (input.Event.KeyEvent.uChar.AsciiChar == VK_CANCEL ||
   input.Event.KeyEvent.uChar.AsciiChar == VK_ESCAPE ||
   tolower(input.Event.KeyEvent.uChar.AsciiChar) == 'q') {


   return FALSE;
  }




  *cur = save;
  pBuffer = cur;
 }

 return TRUE;
}
