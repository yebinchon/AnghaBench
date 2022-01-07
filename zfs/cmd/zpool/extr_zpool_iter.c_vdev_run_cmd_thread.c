
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmd; } ;
typedef TYPE_1__ vdev_cmd_data_t ;
typedef int fullpath ;


 int MAXPATHLEN ;
 int X_OK ;
 scalar_t__ access (char*,int ) ;
 int free (char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int * strchr (char*,char) ;
 char* strdup (int ) ;
 char* strtok_r (char*,char*,char**) ;
 int vdev_run_cmd (TYPE_1__*,char*) ;
 char* zpool_get_cmd_search_path () ;

__attribute__((used)) static void
vdev_run_cmd_thread(void *cb_cmd_data)
{
 vdev_cmd_data_t *data = cb_cmd_data;
 char *cmd = ((void*)0), *cmddup, *cmdrest;

 cmddup = strdup(data->cmd);
 if (cmddup == ((void*)0))
  return;

 cmdrest = cmddup;
 while ((cmd = strtok_r(cmdrest, ",", &cmdrest))) {
  char *dir = ((void*)0), *sp, *sprest;
  char fullpath[MAXPATHLEN];

  if (strchr(cmd, '/') != ((void*)0))
   continue;

  sp = zpool_get_cmd_search_path();
  if (sp == ((void*)0))
   continue;

  sprest = sp;
  while ((dir = strtok_r(sprest, ":", &sprest))) {
   if (snprintf(fullpath, sizeof (fullpath),
       "%s/%s", dir, cmd) == -1)
    continue;

   if (access(fullpath, X_OK) == 0) {
    vdev_run_cmd(data, fullpath);
    break;
   }
  }
  free(sp);
 }
 free(cmddup);
}
