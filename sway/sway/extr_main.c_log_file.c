
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 int SWAY_INFO ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int sway_log (int ,char*,char*) ;

__attribute__((used)) static void log_file(FILE *f) {
 char *line = ((void*)0);
 size_t line_size = 0;
 ssize_t nread;
 while ((nread = getline(&line, &line_size, f)) != -1) {
  if (line[nread - 1] == '\n') {
   line[nread - 1] = '\0';
  }
  sway_log(SWAY_INFO, "%s", line);
 }
 free(line);
}
