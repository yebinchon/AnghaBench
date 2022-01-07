
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const* const,char*) ;
 int gl_histadd (char*) ;
 int memset (char*,int ,int) ;

void
gl_histloadfile(const char *const path)
{
 FILE *fp;
 char line[256];

 fp = fopen(path,



  "r"

 );
 if (fp != ((void*)0)) {
  memset(line, 0, sizeof(line));
  while (fgets(line, sizeof(line) - 2, fp) != ((void*)0)) {
   gl_histadd(line);
  }
  fclose(fp);
 }
}
