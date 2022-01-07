
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef scalar_t__ pid_t ;
typedef size_t period_t ;
typedef int hook_path ;
typedef int DIR ;


 scalar_t__ EACCES ;
 int EXIT_FAILURE ;
 int MAX_HOOK_PATH ;
 int STDOUT_FILENO ;
 int _exit (int ) ;
 int close (int ) ;
 scalar_t__ errno ;
 int execl (char*,char*,char*,int ,int ,int *) ;
 scalar_t__ fork () ;
 int * open_hooks_dir (char*) ;
 int * period_names ;
 int perror (char*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char*,char*) ;

void
hooks_signal_period_change(period_t prev_period, period_t period)
{
 char hooksdir_path[MAX_HOOK_PATH];
 DIR *hooks_dir = open_hooks_dir(hooksdir_path);
 if (hooks_dir == ((void*)0)) return;

 struct dirent* ent;
 while ((ent = readdir(hooks_dir)) != ((void*)0)) {

  if (ent->d_name[0] == '\0' || ent->d_name[0] == '.') continue;

  char *hook_name = ent->d_name;
  char hook_path[MAX_HOOK_PATH];
  snprintf(hook_path, sizeof(hook_path), "%s/%s",
    hooksdir_path, hook_name);





  pid_t pid = fork();
  if (pid == (pid_t)-1) {
   perror("fork");
   continue;
  } else if (pid == 0) {
   close(STDOUT_FILENO);

   int r = execl(hook_path, hook_name,
          "period-changed",
          period_names[prev_period],
          period_names[period], ((void*)0));
   if (r < 0 && errno != EACCES) perror("execl");


   _exit(EXIT_FAILURE);
  }

 }
}
