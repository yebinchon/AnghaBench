
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int input ;
typedef int ULONG ;
struct TYPE_6__ {int AsciiChar; } ;
struct TYPE_7__ {TYPE_1__ uChar; scalar_t__ bKeyDown; } ;
struct TYPE_8__ {TYPE_2__ KeyEvent; } ;
struct TYPE_9__ {scalar_t__ EventType; TYPE_3__ Event; } ;
typedef int PCSTR ;
typedef TYPE_4__ INPUT_RECORD ;
typedef int HANDLE ;
typedef int DWORD ;


 int FlushConsoleInputBuffer (int ) ;
 int GetStdHandle (int ) ;
 scalar_t__ KEY_EVENT ;
 int PrintMessage (int ) ;
 int ReadConsoleInput (int ,TYPE_4__*,int,int *) ;
 int STD_INPUT_HANDLE ;
 int fflush (int *) ;
 int printf (char*,int) ;
 scalar_t__ strchr (int ,int) ;
 int tolower (int ) ;

int InputChar(ULONG msg, PCSTR ans)
{
 HANDLE hStdIn;
 INPUT_RECORD input;
 DWORD result;
 int reply;

 PrintMessage(msg);
 fflush(((void*)0));

 hStdIn = GetStdHandle(STD_INPUT_HANDLE);

 FlushConsoleInputBuffer(hStdIn);

 for (;;) {
  ReadConsoleInput(hStdIn, &input, sizeof(input), &result);

  if (input.EventType == KEY_EVENT &&
   input.Event.KeyEvent.bKeyDown) {

   reply = tolower(input.Event.KeyEvent.uChar.AsciiChar);

   if (strchr(ans, reply)) {
    break;
   }
  }
 }

 printf("%c\n", reply);

 return reply;
}
