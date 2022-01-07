
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char* string ;
typedef int longstring ;
typedef int gfile ;
typedef int cmd ;
struct TYPE_5__ {int errNo; } ;
typedef int LineListPtr ;
typedef int FTPSigProc ;
typedef TYPE_1__* FTPCIPtr ;
typedef int FILE ;


 int AddLine (int ,int ) ;
 int Error (TYPE_1__*,int ,char*,char*) ;
 int * FGets (int ,int,int *) ;
 int NcSignal (int ,int ) ;
 int PrintF (TYPE_1__*,char*,int ) ;
 int SIGPIPE ;
 scalar_t__ SIG_IGN ;
 int kDoPerror ;
 int kErrGlobFailed ;
 int kNoErr ;
 int pclose (int *) ;
 scalar_t__ popen (char*,char*) ;
 int snprintf (char*,int,char*,char*,char*,char*,char const* const) ;
 int sprintf (char*,char*,char*,char*,char*,char const* const) ;

__attribute__((used)) static int
LazyUnixLocalGlob(FTPCIPtr cip, LineListPtr fileList, const char *const pattern)
{
 string cmd;
 longstring gfile;
 FILE *fp;
 FTPSigProc sp;
 (void) sprintf(cmd, "%s -c \"%s %s %s\"", "/bin/sh", "/bin/ls",
  "-d", pattern);


 fp = (FILE *) popen(cmd, "r");
 if (fp == ((void*)0)) {
  Error(cip, kDoPerror, "Could not Lglob: [%s]\n", cmd);
  cip->errNo = kErrGlobFailed;
  return (kErrGlobFailed);
 }
 sp = NcSignal(SIGPIPE, (FTPSigProc) SIG_IGN);
 while (FGets(gfile, sizeof(gfile), (FILE *) fp) != ((void*)0)) {
  PrintF(cip, "  Lglob [%s]\n", gfile);
  (void) AddLine(fileList, gfile);
 }
 (void) pclose(fp);
 (void) NcSignal(SIGPIPE, sp);
 return (kNoErr);
}
