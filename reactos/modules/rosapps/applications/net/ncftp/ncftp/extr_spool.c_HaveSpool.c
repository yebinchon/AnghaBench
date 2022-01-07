
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ncftpbatch ;


 int BINDIR ;
 int F_OK ;
 int OurInstallationPath (char*,int,char*) ;
 int STRNCAT (char*,char*) ;
 int STRNCPY (char*,int ) ;
 int X_OK ;
 scalar_t__ _access (char*,int ) ;
 scalar_t__ access (char*,int ) ;
 int gHaveSpool ;
 char* gOurInstallationPath ;
 scalar_t__ geteuid () ;
 scalar_t__ system (char*) ;

int
HaveSpool(void)
{
 if (gHaveSpool < 0) {
  if (geteuid() == 0) {
   gHaveSpool = (access("/usr/bin/ncftpbatch", X_OK) == 0) ? 1 : 0;
  } else {
   gHaveSpool = (system("ncftpbatch -X") == 0) ? 1 : 0;
  }
 }


 return (gHaveSpool);
}
