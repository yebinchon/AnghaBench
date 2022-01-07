
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pathName ;
typedef int FILE ;


 int FOPEN_READ_TEXT ;
 int OurDirectoryPath (char*,int,int ) ;
 int ProcessPrefsFile (int *) ;
 int fclose (int *) ;
 int * fopen (char*,int ) ;
 char* gOurDirectoryPath ;
 int gPrefsDirty ;
 char* kGlobalFixedPrefFileName ;
 char* kGlobalPrefFileName ;
 int kPrefFileName ;
 int kPrefFileNameV2 ;

void
LoadPrefs(void)
{
 FILE *fp;
 char pathName[256];
 fp = fopen(kGlobalPrefFileName, FOPEN_READ_TEXT);
 if (fp != ((void*)0)) {

  ProcessPrefsFile(fp);
  (void) fclose(fp);
 }

 if (gOurDirectoryPath[0] != '\0') {
  (void) OurDirectoryPath(pathName, sizeof(pathName), kPrefFileName);

  fp = fopen(pathName, FOPEN_READ_TEXT);
  if (fp == ((void*)0)) {




   gPrefsDirty++;
   (void) OurDirectoryPath(pathName, sizeof(pathName), kPrefFileNameV2);
   fp = fopen(pathName, FOPEN_READ_TEXT);
  }

  if (fp == ((void*)0)) {

   gPrefsDirty++;
  } else {

   ProcessPrefsFile(fp);
   (void) fclose(fp);
  }
 }

 fp = fopen(kGlobalFixedPrefFileName, FOPEN_READ_TEXT);
 if (fp != ((void*)0)) {

  ProcessPrefsFile(fp);
  (void) fclose(fp);
 }
}
