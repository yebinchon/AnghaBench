
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
typedef int DIR ;


 int MAXPATHLEN ;
 scalar_t__ S_ISREG (int) ;
 int S_IXUSR ;
 int closedir (int *) ;
 int * opendir (char*) ;
 int print_zpool_script_help (char*,char*) ;
 struct dirent* readdir (int *) ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static void
print_zpool_dir_scripts(char *dirpath)
{
 DIR *dir;
 struct dirent *ent;
 char fullpath[MAXPATHLEN];
 struct stat dir_stat;

 if ((dir = opendir(dirpath)) != ((void*)0)) {

  while ((ent = readdir(dir)) != ((void*)0)) {
   sprintf(fullpath, "%s/%s", dirpath, ent->d_name);


   if (stat(fullpath, &dir_stat) == 0)
    if (dir_stat.st_mode & S_IXUSR &&
        S_ISREG(dir_stat.st_mode))
     print_zpool_script_help(ent->d_name,
         fullpath);
  }
  closedir(dir);
 }
}
