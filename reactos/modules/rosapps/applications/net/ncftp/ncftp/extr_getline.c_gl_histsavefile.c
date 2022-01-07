
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int HIST_SIZE ;
 int fclose (int *) ;
 int * fopen (char const* const,char*) ;
 int fprintf (int *,char*,char const*) ;
 char** hist_buf ;
 int hist_pos ;

void
gl_histsavefile(const char *const path)
{
 FILE *fp;
 const char *p;
 int i, j;

 fp = fopen(path,



  "w"

 );
 if (fp != ((void*)0)) {
  for (i=2; i<HIST_SIZE; i++) {
          j = (hist_pos+i) % HIST_SIZE;
   p = hist_buf[j];
   if ((p == ((void*)0)) || (*p == '\0'))
    continue;
   fprintf(fp, "%s\n", p);
  }
  fclose(fp);
 }
}
