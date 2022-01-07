
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int getline (char**,size_t*,int *) ;
 char** realloc (char**,int) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int
libzfs_read_stdout_from_fd(int fd, char **lines[])
{

 FILE *fp;
 int lines_cnt = 0;
 size_t len = 0;
 char *line = ((void*)0);
 char **tmp_lines = ((void*)0), **tmp;
 char *nl = ((void*)0);
 int rc;

 fp = fdopen(fd, "r");
 if (fp == ((void*)0))
  return (0);
 while (1) {
  rc = getline(&line, &len, fp);
  if (rc == -1)
   break;

  tmp = realloc(tmp_lines, sizeof (*tmp_lines) * (lines_cnt + 1));
  if (tmp == ((void*)0)) {

   break;
  }
  tmp_lines = tmp;


  if ((nl = strchr(line, '\n')) != ((void*)0))
   *nl = '\0';
  tmp_lines[lines_cnt] = line;
  lines_cnt++;
  line = ((void*)0);
 }
 fclose(fp);
 *lines = tmp_lines;
 return (lines_cnt);
}
