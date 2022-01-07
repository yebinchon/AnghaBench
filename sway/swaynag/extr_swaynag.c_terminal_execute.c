
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SWAY_DEBUG ;
 int SWAY_ERROR ;
 int S_IRUSR ;
 int S_IWUSR ;
 int S_IXUSR ;
 int chmod (char*,int) ;
 int execl (char*,char*,char*,char*,int *) ;
 int fclose (int *) ;
 int * fdopen (int ,char*) ;
 int fprintf (int *,char*,char*,char*) ;
 int free (char*) ;
 char* malloc (int) ;
 int mkstemp (char*) ;
 int sprintf (char*,char*,char*,char*) ;
 int strlen (char*) ;
 int sway_log (int ,char*,...) ;
 int sway_log_errno (int ,char*) ;

__attribute__((used)) static bool terminal_execute(char *terminal, char *command) {
 char fname[] = "/tmp/swaynagXXXXXX";
 FILE *tmp= fdopen(mkstemp(fname), "w");
 if (!tmp) {
  sway_log(SWAY_ERROR, "Failed to create temp script");
  return 0;
 }
 sway_log(SWAY_DEBUG, "Created temp script: %s", fname);
 fprintf(tmp, "#!/bin/sh\nrm %s\n%s", fname, command);
 fclose(tmp);
 chmod(fname, S_IRUSR | S_IWUSR | S_IXUSR);
 char *cmd = malloc(sizeof(char) * (strlen(terminal) + strlen(" -e ") + strlen(fname) + 1));
 sprintf(cmd, "%s -e %s", terminal, fname);
 execl("/bin/sh", "/bin/sh", "-c", cmd, ((void*)0));
 sway_log_errno(SWAY_ERROR, "Failed to run command, execl() returned.");
 free(cmd);
 return 0;
}
