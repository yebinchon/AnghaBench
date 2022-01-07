
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vsigproc_t ;
struct winsize {int ws_col; } ;
typedef int sigproc_t ;
typedef int felix ;
struct TYPE_4__ {scalar_t__ X; } ;
struct TYPE_5__ {TYPE_1__ dwSize; } ;
typedef int FILE ;
typedef TYPE_2__ CONSOLE_SCREEN_BUFFER_INFO ;


 int BINDIR ;
 scalar_t__ EOF ;
 int GL_BUF_SIZE ;
 scalar_t__ GetConsoleScreenBufferInfo (int ,TYPE_2__*) ;
 int GetStdHandle (int ) ;
 scalar_t__ NcSignal (int ,int ) ;
 int SIGPIPE ;
 int SIG_IGN ;
 int STD_OUTPUT_HANDLE ;
 int STRNCAT (char*,char*) ;
 int STRNCPY (char*,int ) ;
 int TIOCGWINSZ ;
 int X_OK ;
 scalar_t__ access (char*,int ) ;
 int atoi (char*) ;
 int fscanf (int *,char*,int*) ;
 int gScreenColumns ;
 scalar_t__ gUid ;
 scalar_t__ getc (int *) ;
 scalar_t__ getenv (char*) ;
 scalar_t__ ioctl (int ,int ,struct winsize*) ;
 int memset (struct winsize*,int ,int) ;
 int pclose (int *) ;
 int * popen (char*,char*) ;

void
GetScreenColumns(void)
{
 char *cp;

 if ((cp = (char *) getenv("COLUMNS")) == ((void*)0)) {
  gScreenColumns = 80;
 } else {
  gScreenColumns = atoi(cp);
  return;
 }
}
