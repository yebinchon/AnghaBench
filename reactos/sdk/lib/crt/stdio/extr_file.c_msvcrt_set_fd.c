
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wxflag; char* lookahead; int exflag; int handle; } ;
typedef TYPE_1__ ioinfo ;
typedef int HANDLE ;


 int EF_CRIT_INIT ;
 int STD_ERROR_HANDLE ;
 int STD_INPUT_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int SetStdHandle (int ,int ) ;
 int WX_APPEND ;
 int WX_DONTINHERIT ;
 int WX_OPEN ;
 int WX_PIPE ;
 int WX_TEXT ;
 int WX_TTY ;
 TYPE_1__** __pioinfo ;

__attribute__((used)) static void msvcrt_set_fd(ioinfo *fdinfo, HANDLE hand, int flag)
{
  fdinfo->handle = hand;
  fdinfo->wxflag = WX_OPEN | (flag & (WX_DONTINHERIT | WX_APPEND | WX_TEXT | WX_PIPE | WX_TTY));
  fdinfo->lookahead[0] = '\n';
  fdinfo->lookahead[1] = '\n';
  fdinfo->lookahead[2] = '\n';
  fdinfo->exflag &= EF_CRIT_INIT;

  switch (fdinfo-__pioinfo[0])
  {
  case 0: SetStdHandle(STD_INPUT_HANDLE, hand); break;
  case 1: SetStdHandle(STD_OUTPUT_HANDLE, hand); break;
  case 2: SetStdHandle(STD_ERROR_HANDLE, hand); break;
  }
}
