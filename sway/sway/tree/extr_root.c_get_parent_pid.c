
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int sprintf (char*,char*,int) ;
 char* strtok (char*,char const*) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static pid_t get_parent_pid(pid_t child) {
 pid_t parent = -1;
 char file_name[100];
 char *buffer = ((void*)0);
 const char *sep = " ";
 FILE *stat = ((void*)0);
 size_t buf_size = 0;

 sprintf(file_name, "/proc/%d/stat", child);

 if ((stat = fopen(file_name, "r"))) {
  if (getline(&buffer, &buf_size, stat) != -1) {
   strtok(buffer, sep);
   strtok(((void*)0), sep);
   strtok(((void*)0), sep);
   char *token = strtok(((void*)0), sep);
   parent = strtol(token, ((void*)0), 10);
  }
  free(buffer);
  fclose(stat);
 }

 if (parent) {
  return (parent == child) ? -1 : parent;
 }

 return -1;
}
