
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;
typedef int FILE ;


 int ERR ;
 scalar_t__ fprintf (int *,char*,char const*) ;
 int mvwinnstr (int *,int,int ,char*,size_t) ;
 char* string_trim_end (char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static bool
save_window_line(FILE *file, WINDOW *win, int y, char *buf, size_t bufsize)
{
 int read = mvwinnstr(win, y, 0, buf, bufsize);
 const char *out = read == ERR ? "" : string_trim_end(buf);

 return read == ERR ? 0 : fprintf(file, "%s\n", out) == strlen(out) + 1;
}
