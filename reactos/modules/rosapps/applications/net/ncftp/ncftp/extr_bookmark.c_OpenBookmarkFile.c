
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pathName ;
typedef int path2 ;
typedef int line ;
typedef int FILE ;
typedef int Bookmark ;


 int CloseBookmarkFile (int *) ;
 int * FGets (char*,int,int *) ;
 int FOPEN_READ_TEXT ;
 scalar_t__ GetNextBookmark (int *,int *) ;
 int OurDirectoryPath (char*,int,int ) ;
 int STRNCAT (char*,char*) ;
 int STRNCPY (char*,char*) ;
 int _chmod (char*,int) ;
 int fclose (int *) ;
 int * fopen (char*,int ) ;
 int fprintf (int ,char*,char*) ;
 char* gOurDirectoryPath ;
 int kBookmarkFileName ;
 int kBookmarkMinVersion ;
 int kOldBookmarkFileName ;
 scalar_t__ rename (char*,char*) ;
 int sprintf (char*,char*,int) ;
 int sscanf (char*,char*,int*) ;
 int stderr ;

FILE *
OpenBookmarkFile(int *numBookmarks0)
{
 char pathName[256], path2[256];
 char line[256];
 FILE *fp;
 int version;
 int numBookmarks;
 Bookmark junkbm;

 if (gOurDirectoryPath[0] == '\0')
  return ((void*)0);
 (void) OurDirectoryPath(pathName, sizeof(pathName), kBookmarkFileName);
 fp = fopen(pathName, FOPEN_READ_TEXT);
 if (fp == ((void*)0)) {

  (void) OurDirectoryPath(path2, sizeof(path2), kOldBookmarkFileName);
  if (rename(path2, pathName) == 0) {

   fp = fopen(pathName, FOPEN_READ_TEXT);
   if (fp == ((void*)0))
    return ((void*)0);
  }
  return ((void*)0);
 }

 (void) _chmod(pathName, 00600);
 if (FGets(line, sizeof(line), fp) == ((void*)0)) {
  (void) fprintf(stderr, "%s: invalid format.\n", pathName);
  (void) fclose(fp);
  return ((void*)0);
 }




 version = -1;
 (void) sscanf(line, "%*s %*s %*s %d", &version);
 if (version < kBookmarkMinVersion) {
  if (version < 0) {
   (void) fprintf(stderr, "%s: invalid format, or bad version.\n", pathName);
   (void) fclose(fp);
   return ((void*)0);
  }
  (void) STRNCPY(path2, pathName);
  (void) sprintf(line, ".v%d", version);
  (void) STRNCAT(path2, line);
  (void) rename(pathName, path2);
  (void) fprintf(stderr, "%s: old version.\n", pathName);
  (void) fclose(fp);
  return ((void*)0);
 }




 numBookmarks = -1;




 if (FGets(line, sizeof(line), fp) == ((void*)0)) {
  (void) fprintf(stderr, "%s: invalid format.\n", pathName);
  (void) fclose(fp);
  return ((void*)0);
 }

 if (numBookmarks0 == (int *) 0) {



  return(fp);
 }




 for (numBookmarks = 0; ; numBookmarks++) {
  if (GetNextBookmark(fp, &junkbm) < 0)
   break;
 }






 CloseBookmarkFile(fp);
 fp = fopen(pathName, FOPEN_READ_TEXT);
 if (fp == ((void*)0))
  return (((void*)0));
 if (FGets(line, sizeof(line), fp) == ((void*)0)) {
  (void) fprintf(stderr, "%s: invalid format.\n", pathName);
  (void) fclose(fp);
  return ((void*)0);
 }

 if (FGets(line, sizeof(line), fp) == ((void*)0)) {
  (void) fprintf(stderr, "%s: invalid format.\n", pathName);
  (void) fclose(fp);
  return ((void*)0);
 }


 *numBookmarks0 = numBookmarks;
 return (fp);
}
