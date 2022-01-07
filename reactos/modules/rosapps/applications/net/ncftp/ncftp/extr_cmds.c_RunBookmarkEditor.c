
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ncftpbookmarks ;
typedef int msg ;
typedef int bmSelectionFile ;
typedef scalar_t__ HANDLE ;
typedef int FILE ;
typedef int DWORD ;
typedef int BOOL ;


 char* BINDIR ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateMailslot (int ,int,int ,int *) ;
 scalar_t__ EINTR ;



 int FGets (char*,size_t,int *) ;
 int FOPEN_READ_TEXT ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAILSLOT_WAIT_FOREVER ;
 int OurDirectoryPath (char*,int,int ) ;
 int OurInstallationPath (char*,int,char*) ;
 int ReadFile (scalar_t__,char*,int,int *,int *) ;
 int STRNCAT (char*,char*) ;
 int STRNCPY (char*,char*) ;
 int SW_SHOWNORMAL ;
 int Strncpy (char*,char*,size_t) ;
 int SysPerror (char*) ;
 int Trace (int ,char*,char*) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WinExec (char const*,int ) ;
 int X_OK ;
 int ZeroMemory (char*,int) ;
 scalar_t__ access (char*,int ) ;
 scalar_t__ errno ;
 int execv (char*,char**) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,int ) ;
 scalar_t__ fork () ;
 int fprintf (int ,char*,char const*,...) ;
 char* gOurDirectoryPath ;
 char* gOurInstallationPath ;
 scalar_t__ getpid () ;
 int kNcFTPBookmarksMailslot ;
 int kNcFTPBookmarksMailslotMsgSize ;
 int kOpenSelectedBookmarkFileName ;
 int memset (char*,int ,size_t) ;
 int sprintf (char*,char*,unsigned int) ;
 int stderr ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int unlink (char*) ;
 scalar_t__ wait (int*) ;
 scalar_t__ waitpid (int,int*,int ) ;

__attribute__((used)) static int
RunBookmarkEditor(char *selectedBmName, size_t dsize)
{
 return (-1);


}
