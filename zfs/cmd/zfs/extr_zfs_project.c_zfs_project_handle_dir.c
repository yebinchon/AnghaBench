
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zpc_recursive; scalar_t__ zpc_ignore_noent; } ;
typedef TYPE_1__ zfs_project_control_t ;
struct dirent {char const* d_name; scalar_t__ d_type; } ;
typedef int list_t ;
typedef int fullname ;
typedef int DIR ;


 scalar_t__ B_TRUE ;
 scalar_t__ DT_DIR ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int PATH_MAX ;
 int closedir (int *) ;
 int errno ;
 int fprintf (int ,char*,char const*,char*) ;
 char* gettext (char*) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 int sprintf (char*,char*,char const*,char const*) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strerror (int) ;
 int strlen (char const*) ;
 int zfs_project_handle_one (char*,TYPE_1__*) ;
 int zfs_project_item_alloc (int *,char*) ;

__attribute__((used)) static int
zfs_project_handle_dir(const char *name, zfs_project_control_t *zpc,
    list_t *head)
{
 char fullname[PATH_MAX];
 struct dirent *ent;
 DIR *dir;
 int ret = 0;

 dir = opendir(name);
 if (dir == ((void*)0)) {
  if (errno == ENOENT && zpc->zpc_ignore_noent)
   return (0);

  ret = -errno;
  (void) fprintf(stderr, gettext("failed to opendir %s: %s\n"),
      name, strerror(errno));
  return (ret);
 }


 zpc->zpc_ignore_noent = B_TRUE;
 errno = 0;
 while (!ret && (ent = readdir(dir)) != ((void*)0)) {

  if (strcmp(ent->d_name, ".") == 0 ||
      strcmp(ent->d_name, "..") == 0)
   continue;

  if (strlen(ent->d_name) + strlen(name) >=
      sizeof (fullname) + 1) {
   errno = ENAMETOOLONG;
   break;
  }

  sprintf(fullname, "%s/%s", name, ent->d_name);
  ret = zfs_project_handle_one(fullname, zpc);
  if (!ret && zpc->zpc_recursive && ent->d_type == DT_DIR)
   zfs_project_item_alloc(head, fullname);
 }

 if (errno && !ret) {
  ret = -errno;
  (void) fprintf(stderr, gettext("failed to readdir %s: %s\n"),
      name, strerror(errno));
 }

 closedir(dir);
 return (ret);
}
