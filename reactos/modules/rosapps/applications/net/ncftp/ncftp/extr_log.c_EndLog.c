
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpLog ;
struct Stat {scalar_t__ st_size; } ;
typedef int str ;
typedef int FILE ;


 int FOPEN_READ_TEXT ;
 int FOPEN_WRITE_TEXT ;
 int OurDirectoryPath (char*,int,char*) ;
 scalar_t__ Stat (char*,struct Stat*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,int ) ;
 int fputs (char*,int *) ;
 char* gLogFileName ;
 double gMaxLogSize ;
 char* gOurDirectoryPath ;
 int isspace (char) ;
 scalar_t__ remove (char*) ;
 scalar_t__ rename (char*,char*) ;
 scalar_t__ strlen (char*) ;

void
EndLog(void)
{
 FILE *new, *old;
 struct Stat st;
 long fat;
 char str[512];
 char tmpLog[256];

 if (gOurDirectoryPath[0] == '\0')
  return;





 if ((gMaxLogSize <= 0) || (Stat(gLogFileName, &st) < 0))
  return;

 if ((size_t)st.st_size < (size_t)gMaxLogSize)
  return;

 if ((old = fopen(gLogFileName, FOPEN_READ_TEXT)) == ((void*)0))
  return;




 fat = (long) st.st_size - (long) gMaxLogSize + (long) (0.30 * gMaxLogSize);
 while (fat > 0L) {
  if (fgets(str, (int) sizeof(str), old) == ((void*)0))
   return;
  fat -= (long) strlen(str);
 }

 for (;;) {
  if (fgets(str, (int) sizeof(str), old) == ((void*)0)) {
   (void) fclose(old);
   (void) remove(gLogFileName);
   return;
  }
  if (! isspace(*str))
   break;
 }


 OurDirectoryPath(tmpLog, sizeof(tmpLog), "log.tmp");
 if ((new = fopen(tmpLog, FOPEN_WRITE_TEXT)) == ((void*)0)) {
  (void) fclose(old);
  return;
 }
 (void) fputs(str, new);
 while (fgets(str, (int) sizeof(str), old) != ((void*)0))
  (void) fputs(str, new);
 (void) fclose(old);
 (void) fclose(new);
 if (remove(gLogFileName) < 0)
  return;
 if (rename(tmpLog, gLogFileName) < 0)
  return;
}
