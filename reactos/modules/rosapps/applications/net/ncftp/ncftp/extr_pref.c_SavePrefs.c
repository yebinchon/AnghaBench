
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pathName2 ;
typedef int pathName ;
struct TYPE_2__ {scalar_t__ visible; char* varname; int (* proc ) (int,int *,int *) ;} ;
typedef int FILE ;


 int FOPEN_WRITE_TEXT ;
 int OurDirectoryPath (char*,int,char*) ;
 int fclose (int *) ;
 int * fopen (char*,int ) ;
 int fprintf (int *,char*,...) ;
 int gNumPrefOpts ;
 TYPE_1__* gPrefOpts ;
 scalar_t__ gPrefsDirty ;
 scalar_t__ getpid () ;
 char* kPrefFileName ;
 scalar_t__ kPrefOptObselete ;
 int perror (char*) ;
 scalar_t__ rename (char*,char*) ;
 int sprintf (char*,char*,unsigned int) ;
 int stub1 (int,int *,int *) ;
 int unlink (char*) ;

void
SavePrefs(void)
{
 char pathName[256];
 char pathName2[256];
 char tName[32];
 int t;
 FILE *fp;

 if (gPrefsDirty == 0)
  return;

 (void) OurDirectoryPath(pathName, sizeof(pathName), kPrefFileName);

 (void) sprintf(tName, "tpref%06u.txt", (unsigned int) getpid());
 (void) OurDirectoryPath(pathName2, sizeof(pathName2), tName);

 fp = fopen(pathName2, FOPEN_WRITE_TEXT);
 if (fp == ((void*)0)) {
  perror("could not save preferences file");
 } else {
  (void) fprintf(fp, "%s", "# NcFTP 3 preferences file\n# This file is loaded and overwritten each time NcFTP is run.\n#\n");
  for (t=0; t<gNumPrefOpts; t++) {
   if (gPrefOpts[t].visible != kPrefOptObselete) {
    (void) fprintf(fp, "%s=", gPrefOpts[t].varname);
    (*gPrefOpts[t].proc)(t, ((void*)0), fp);
    (void) fprintf(fp, "\n");
   }
  }
  (void) fclose(fp);
  (void) unlink(pathName);
  if (rename(pathName2, pathName) < 0) {
   perror("could not finish saving preferences file");
   (void) unlink(pathName2);
  };
 }
}
