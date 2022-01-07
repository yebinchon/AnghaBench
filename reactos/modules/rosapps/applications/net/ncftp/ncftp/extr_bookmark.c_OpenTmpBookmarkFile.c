
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pathName ;
typedef int path2 ;
typedef int FILE ;


 int FOPEN_WRITE_TEXT ;
 int OurDirectoryPath (char*,int,int ) ;
 int STRNCAT (char*,char*) ;
 int _chmod (char*,int) ;
 int fclose (int *) ;
 int * fopen (char*,int ) ;
 scalar_t__ fprintf (int ,char*,...) ;
 char* gOurDirectoryPath ;
 scalar_t__ getpid () ;
 int kBookmarkFileName ;
 int kBookmarkVersion ;
 int kTmpBookmarkFileName ;
 int perror (char*) ;
 int sprintf (char*,char*,unsigned int) ;
 int stderr ;

FILE *
OpenTmpBookmarkFile(int nb)
{
 FILE *outfp;
 char pidStr[32];
 char pathName[256], path2[256];

 if (gOurDirectoryPath[0] == '\0')
  return (((void*)0));

 (void) OurDirectoryPath(path2, sizeof(path2), kBookmarkFileName);
 (void) OurDirectoryPath(pathName, sizeof(pathName), kTmpBookmarkFileName);
 (void) sprintf(pidStr, "-%u.txt", (unsigned int) getpid());
 (void) STRNCAT(pathName, pidStr);

 outfp = fopen(pathName, FOPEN_WRITE_TEXT);
 if (outfp == ((void*)0)) {
  (void) fprintf(stderr, "Could not save bookmark.\n");
  perror(pathName);
  return (((void*)0));
 }
 (void) _chmod(pathName, 00600);
 if (nb > 0) {
  if (fprintf(outfp, "NcFTP bookmark-file version: %d\nNumber of bookmarks: %d\n", kBookmarkVersion, nb) < 0) {
   (void) fprintf(stderr, "Could not save bookmark.\n");
   perror(pathName);
   (void) fclose(outfp);
   return (((void*)0));
  }
 } else {
  if (fprintf(outfp, "NcFTP bookmark-file version: %d\nNumber of bookmarks: ??\n", kBookmarkVersion) < 0) {
   (void) fprintf(stderr, "Could not save bookmark.\n");
   perror(pathName);
   (void) fclose(outfp);
   return (((void*)0));
  }
 }

 return (outfp);
}
