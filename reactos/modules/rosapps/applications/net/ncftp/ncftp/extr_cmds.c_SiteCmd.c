
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lastFTPCmdResultLL; } ;
typedef int CommandPtr ;
typedef int ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int FTPCmd (TYPE_1__*,char*,char*) ;
 int PrintResp (int *) ;
 int STRNCAT (char*,char const*) ;
 int STRNCPY (char*,char*) ;
 TYPE_1__ gConn ;
 int gUnusedArg ;

void
SiteCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 char cmdbuf[256];
 int i;

 ARGSUSED(gUnusedArg);
 (void) STRNCPY(cmdbuf, "SITE");
 for (i=1; i<argc; i++) {
  (void) STRNCAT(cmdbuf, " ");
  (void) STRNCAT(cmdbuf, argv[i]);
 }
 (void) FTPCmd(&gConn, "%s", cmdbuf);
 PrintResp(&gConn.lastFTPCmdResultLL);
}
