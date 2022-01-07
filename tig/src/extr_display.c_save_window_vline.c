
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;
typedef int FILE ;


 int ERR ;
 scalar_t__ fprintf (int *,char*,char*) ;
 int mvwinnstr (int *,int,int ,char*,size_t) ;
 char* string_trim_end (char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static bool
save_window_vline(FILE *file, WINDOW *left, WINDOW *right, int y, char *buf, size_t bufsize)
{
 int read1 = mvwinnstr(left, y, 0, buf, bufsize);
 int read2 = read1 == ERR ? ERR : mvwinnstr(right, y, 0, buf + read1 + 1, bufsize - read1 - 1);

 if (read2 == ERR)
  return 0;
 buf[read1] = '|';
 buf = string_trim_end(buf);

 return fprintf(file, "%s\n", string_trim_end(buf)) == strlen(buf) + 1;
}
