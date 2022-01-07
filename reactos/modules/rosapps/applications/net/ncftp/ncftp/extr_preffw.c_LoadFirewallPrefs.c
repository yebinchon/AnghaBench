
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pathName ;
struct TYPE_3__ {int ourHostName; } ;
typedef int FILE ;


 int FOPEN_READ_TEXT ;
 int FOPEN_WRITE_TEXT ;
 int FTPInitializeOurHostName (TYPE_1__*) ;
 int OurDirectoryPath (char*,int,int ) ;
 int ProcessFirewallPrefFile (int *) ;
 int STRNCAT (char*,char*) ;
 int STRNCPY (char*,char*) ;
 int WriteDefaultFirewallPrefs (int *) ;
 int _chmod (char*,int) ;
 int fclose (int *) ;
 int * fopen (char*,int ) ;
 char* gFirewallExceptionList ;
 char* gFirewallHost ;
 char* gFirewallPass ;
 scalar_t__ gFirewallPort ;
 int gFirewallPrefsLoaded ;
 int gFirewallType ;
 char* gFirewallUser ;
 TYPE_1__ gLib ;
 int gNumProgramRuns ;
 char* gOurDirectoryPath ;
 int kFirewallNotInUse ;
 int kFirewallPrefFileName ;
 char* kGlobalFirewallPrefFileName ;
 char* kGlobalFixedFirewallPrefFileName ;
 char* strchr (int ,char) ;

void
LoadFirewallPrefs(int forceReload)
{
 FILE *fp, *fp2;
 char pathName[256];
 char *cp;
 int userFile = 0;
 int sysFile = 0;

 if ((gFirewallPrefsLoaded != 0) && (forceReload == 0))
  return;
 gFirewallPrefsLoaded = 1;

 if (gOurDirectoryPath[0] == '\0')
  return;
 (void) OurDirectoryPath(pathName, sizeof(pathName), kFirewallPrefFileName);


 gFirewallType = kFirewallNotInUse;
 gFirewallPort = 0;
 gFirewallHost[0] = '\0';
 gFirewallUser[0] = '\0';
 gFirewallPass[0] = '\0';
 gFirewallExceptionList[0] = '\0';

 fp2 = fopen(kGlobalFirewallPrefFileName, FOPEN_READ_TEXT);
 if (fp2 != ((void*)0)) {

  ProcessFirewallPrefFile(fp2);
  (void) fclose(fp2);
  sysFile++;
 }

 fp = fopen(pathName, FOPEN_READ_TEXT);
 if (fp != ((void*)0)) {

  ProcessFirewallPrefFile(fp);
  (void) fclose(fp);
  userFile = 1;
 }

 fp2 = fopen(kGlobalFixedFirewallPrefFileName, FOPEN_READ_TEXT);
 if (fp2 != ((void*)0)) {

  ProcessFirewallPrefFile(fp2);
  (void) fclose(fp2);
  sysFile++;
 }

 if ((userFile == 0) && (sysFile == 0)) {



  fp = fopen(pathName, FOPEN_WRITE_TEXT);
  if (fp != ((void*)0)) {
   WriteDefaultFirewallPrefs(fp);
   (void) fclose(fp);
   (void) _chmod(pathName, 00600);
   gNumProgramRuns = 1;
  }
 }

 if (gFirewallExceptionList[0] == '\0') {
  FTPInitializeOurHostName(&gLib);
  cp = strchr(gLib.ourHostName, '.');

  if (cp != ((void*)0)) {
   (void) STRNCPY(gFirewallExceptionList, cp);
   (void) STRNCAT(gFirewallExceptionList, ",localdomain");
  }
 }
}
