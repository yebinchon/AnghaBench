
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int pathName ;
typedef int line ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 int FOPEN_READ_TEXT ;
 int FOPEN_WRITE_TEXT ;
 int OurDirectoryPath (char*,int,int ) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,int ) ;
 int fprintf (int *,char*,int) ;
 int gNumProgramRuns ;
 char* gOurDirectoryPath ;
 int gPrefsDirty ;
 int kFirstFileName ;
 int sscanf (char*,char*,int*) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strncmp (char*,char*,int) ;

void
CheckForNewV3User(void)
{
 FILE *fp;
 struct stat st;
 char pathName[256];
 char line[256];

 gNumProgramRuns = 0;


 if (gOurDirectoryPath[0] != '\0') {
  (void) OurDirectoryPath(pathName, sizeof(pathName), kFirstFileName);

  if ((stat(pathName, &st) < 0) && (errno == ENOENT)) {
   gNumProgramRuns = 1;
   gPrefsDirty++;


   fp = fopen(pathName, FOPEN_WRITE_TEXT);
   if (fp == ((void*)0))
    return;
   (void) fprintf(fp, "# NcFTP uses this file to mark that you have run it before, and that you do not\n# need any special first-time instructions or setup.\n#\nruns=%d\n", gNumProgramRuns);
   (void) fclose(fp);
  } else {
   fp = fopen(pathName, FOPEN_READ_TEXT);
   if (fp != ((void*)0)) {
    while (fgets(line, sizeof(line) - 1, fp) != ((void*)0)) {
     if (strncmp(line, "runs=", 5) == 0) {
      (void) sscanf(line + 5, "%d",
       &gNumProgramRuns);
      break;
     }
    }
    (void) fclose(fp);
   }


   gNumProgramRuns++;
   if (gNumProgramRuns == 1)
    gPrefsDirty++;






   fp = fopen(pathName, FOPEN_WRITE_TEXT);
   if (fp != ((void*)0)) {
    (void) fprintf(fp, "# NcFTP uses this file to mark that you have run it before, and that you do not\n# need any special first-time instructions or setup.\n#\nruns=%d\n", gNumProgramRuns);
    (void) fclose(fp);
   }
  }
 }
}
