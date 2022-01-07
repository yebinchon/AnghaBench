
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FOPEN_APPEND_TEXT ;
 int fclose (int *) ;
 int * fopen (int ,int ) ;
 int fprintf (int *,char*,char const* const,char const* const) ;
 int gLogFileName ;
 scalar_t__ gMaxLogSize ;

void
LogXfer(const char *const mode, const char *const url)
{
 FILE *fp;

 if (gMaxLogSize == 0)
  return;

 fp = fopen(gLogFileName, FOPEN_APPEND_TEXT);
 if (fp != ((void*)0)) {
  (void) fprintf(fp, "  %s %s\n", mode, url);
  (void) fclose(fp);
 }
}
