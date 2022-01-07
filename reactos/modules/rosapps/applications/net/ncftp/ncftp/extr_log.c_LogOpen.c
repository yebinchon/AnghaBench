
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int FILE ;


 int FOPEN_APPEND_TEXT ;
 char* ctime (int *) ;
 int fclose (int *) ;
 int * fopen (int ,int ) ;
 int fprintf (int *,char*,char const* const,char*) ;
 int gLogFileName ;
 scalar_t__ gMaxLogSize ;
 int time (int *) ;

void
LogOpen(const char *const host)
{
 time_t now;
 FILE *fp;

 if (gMaxLogSize == 0)
  return;

 time(&now);
 fp = fopen(gLogFileName, FOPEN_APPEND_TEXT);
 if (fp != ((void*)0)) {
  (void) fprintf(fp, "%s at %s", host, ctime(&now));
  (void) fclose(fp);
 }
}
