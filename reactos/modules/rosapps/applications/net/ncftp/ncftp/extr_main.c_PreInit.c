
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTPSigProc ;


 int CheckForNewV3User () ;
 int FTPInitLibrary (int *) ;
 char* FTPStrError (int) ;
 int GetScreenColumns () ;
 int GetTickCount () ;
 int GetoptReset () ;
 int InitCommandList () ;
 int InitConnectionInfo () ;
 int InitLineList (int *) ;
 int InitLog () ;
 int InitLs () ;
 int InitPrefs () ;
 int InitUserInfo () ;
 int LC_ALL ;
 int LoadFirewallPrefs (int ) ;
 int LoadPrefs () ;
 int MAKEWORD (int,int) ;
 int NcSignal (int ,int ) ;
 int SIGPOLL ;
 scalar_t__ SIG_IGN ;
 int TruncBatchLog () ;
 scalar_t__ WSAStartup (int ,int *) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int gIsTTY ;
 int gIsTTYr ;
 int gLib ;
 int gStartupURLCdList ;
 scalar_t__ getpid () ;
 int getppid () ;
 scalar_t__ isatty (int) ;
 int setlocale (int ,char*) ;
 int srand (unsigned int) ;
 int stderr ;
 int wsaData ;
 int wsaInit ;

__attribute__((used)) static void
PreInit(void)
{
 int result;
 gIsTTY = ((isatty(2) != 0) && (getppid() > 1)) ? 1 : 0;
 gIsTTYr = ((isatty(0) != 0) && (getppid() > 1)) ? 1 : 0;




 InitUserInfo();
 result = FTPInitLibrary(&gLib);
 if (result < 0) {
  (void) fprintf(stderr, "ncftp: init library error %d (%s).\n", result, FTPStrError(result));
  exit(1);
 }



 srand((unsigned int) getpid());

 InitLineList(&gStartupURLCdList);
 CheckForNewV3User();
 InitLog();
 InitPrefs();
 LoadFirewallPrefs(0);
 LoadPrefs();
 InitConnectionInfo();
 InitCommandList();
 InitLs();
 TruncBatchLog();
 GetoptReset();
 GetScreenColumns();
}
