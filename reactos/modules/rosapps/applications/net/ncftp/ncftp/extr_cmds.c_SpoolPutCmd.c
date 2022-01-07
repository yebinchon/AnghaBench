
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int time_t ;
typedef int ldir ;
struct TYPE_16__ {int xferType; } ;
struct TYPE_15__ {int dataPortMode; int pass; int user; int port; int ip; int host; } ;
struct TYPE_14__ {scalar_t__* noglobargv; } ;
struct TYPE_13__ {TYPE_1__* first; } ;
struct TYPE_12__ {char* line; struct TYPE_12__* next; } ;
typedef TYPE_1__* LinePtr ;
typedef TYPE_2__ LineList ;
typedef int CommandPtr ;
typedef TYPE_3__* ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int DisposeLineListContents (TYPE_2__*) ;
 int * FTPGetLocalCWD (char*,int) ;
 int FTPLocalGlob (TYPE_4__*,TYPE_2__*,char*,int ) ;
 int FTPPerror (TYPE_4__*,int,int ,char*,char*) ;
 int GetStartSpoolDate (int ) ;
 int Getopt (int const,char const** const,char*) ;
 int GetoptReset () ;
 int InitLineList (TYPE_2__*) ;
 int PrintCmdUsage (int const) ;
 int STRNCPY (char*,char const*) ;
 scalar_t__ SpoolCheck () ;
 int SpoolX (char*,char const*,int ,char const*,char*,int ,int ,int ,int ,int ,int,int,int,int ,int *,int *,int *,int ) ;
 int StrRemoveTrailingSlashes (char*) ;
 int Trace (int,char*,char const*,...) ;
 int fprintf (int ,char*) ;
 TYPE_5__ gBm ;
 TYPE_4__ gConn ;
 int gOptArg ;
 int const gOptInd ;
 int gRemoteCWD ;
 scalar_t__ gSavePasswords ;
 int gUnusedArg ;
 int kDeleteNo ;
 int kDeleteYes ;
 int kErrGlobFailed ;
 int kGlobNo ;
 int kGlobYes ;
 int kRecursiveNo ;
 int kRecursiveYes ;
 int kTypeAscii ;
 int perror (char*) ;
 int printf (char*) ;
 int stderr ;
 scalar_t__ strcmp (int ,char*) ;
 char* strrchr (char*,char) ;

void
SpoolPutCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 int opt;
 int renameMode = 0;
 int recurseFlag = kRecursiveNo;
 int rc;
 int i;
 int xtype = gBm.xferType;
 int nD = 0;
 int deleteFlag = kDeleteNo;
 time_t when = 0;
 char ldir[256];
 char pattern[256];
 LineList ll;
 LinePtr lp;
 char *rname;

 ARGSUSED(gUnusedArg);

 if ((gSavePasswords <= 0) && ((strcmp(gConn.user, "anonymous") != 0) && (strcmp(gConn.user, "ftp") != 0))) {
  (void) printf("Sorry, spooling isn't allowed when you're not logged in anonymously, because\nthe spool files would need to save your password.\n\nYou can override this by doing a \"set save-passwords yes\" if you're willing\nto live with the consequences.\n");
  return;
 } else if (SpoolCheck() < 0) {
  return;
 }

 GetoptReset();
 while ((opt = Getopt(argc, argv, "@:azrRD")) >= 0) switch (opt) {
  case '@':
   when = GetStartSpoolDate(gOptArg);
   if ((when == (time_t) -1) || (when == (time_t) 0)) {
    (void) fprintf(stderr, "Bad date.  It must be expressed as one of the following:\n\tYYYYMMDDHHMMSS\t\n\t\"now + N hours|min|sec|days\"\n\tHH:MM\n\nNote:  Do not forget to quote the entire argument for the offset option.\nExample:  bgget -@ \"now + 15 min\" ...\n");
    return;
   }
   break;
  case 'a':
   xtype = kTypeAscii;
   break;
  case 'z':





   renameMode = 1;
   break;
  case 'r':
  case 'R':



   recurseFlag = kRecursiveYes;
   break;
  case 'D':






   nD++;
   break;
  default:
   PrintCmdUsage(cmdp);
   return;
 }

 if (nD >= 2)
  deleteFlag = kDeleteYes;

 if (FTPGetLocalCWD(ldir, sizeof(ldir)) == ((void*)0)) {
  perror("could not get current local directory");
  return;
 }

 if (renameMode != 0) {
  if (gOptInd > argc - 2) {
   PrintCmdUsage(cmdp);
   return;
  }
  rc = SpoolX(
   "put",
   argv[gOptInd + 1],
   gRemoteCWD,
   argv[gOptInd + 0],
   ldir,
   gConn.host,
   gConn.ip,
   gConn.port,
   gConn.user,
   gConn.pass,
   xtype,
   recurseFlag,
   deleteFlag,
   gConn.dataPortMode,
   ((void*)0),
   ((void*)0),
   ((void*)0),
   when
  );
  if (rc == 0) {
   Trace(-1, "  + Spooled: put %s as %s\n", argv[gOptInd], argv[gOptInd]);
  }
 } else {
  for (i=gOptInd; i<argc; i++) {
   STRNCPY(pattern, argv[i]);
   StrRemoveTrailingSlashes(pattern);
   InitLineList(&ll);
   rc = FTPLocalGlob(&gConn, &ll, pattern, (aip->noglobargv[i] != 0) ? kGlobNo: kGlobYes);
   if (rc < 0) {
    FTPPerror(&gConn, rc, kErrGlobFailed, "local glob", pattern);
   } else {
    for (lp = ll.first; lp != ((void*)0); lp = lp->next) {
     if (lp->line != ((void*)0)) {
      rname = strrchr(lp->line, '/');
      if (rname == ((void*)0))
       rname = lp->line;
      else
       rname++;
      rc = SpoolX(
       "put",
       rname,
       gRemoteCWD,
       lp->line,
       ldir,
       gConn.host,
       gConn.ip,
       gConn.port,
       gConn.user,
       gConn.pass,
       xtype,
       recurseFlag,
       deleteFlag,
       gConn.dataPortMode,
       ((void*)0),
       ((void*)0),
       ((void*)0),
       when
      );
      if (rc == 0) {
       Trace(-1, "  + Spooled: put %s\n", lp->line);
      }
     }
    }
   }
   DisposeLineListContents(&ll);
  }
 }
}
