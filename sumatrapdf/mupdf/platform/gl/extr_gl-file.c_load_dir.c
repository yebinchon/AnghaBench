
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dirent {char* d_name; } ;
struct TYPE_5__ {char* curdir; int selected; size_t count; TYPE_1__* files; scalar_t__ (* filter ) (char*) ;int input_dir; } ;
struct TYPE_4__ {int is_dir; int name; } ;
typedef int DIR ;


 int FILENAME_MAX ;
 int PATH_MAX ;
 int closedir (int *) ;
 int cmp_entry ;
 int ctx ;
 TYPE_3__ fc ;
 int fz_is_directory (int ,char*) ;
 int fz_snprintf (char*,int,char*,char*,char*) ;
 int fz_strlcpy (int ,char*,int ) ;
 scalar_t__ nelem (TYPE_1__*) ;
 int * opendir (char*) ;
 int qsort (TYPE_1__*,size_t,int,int ) ;
 struct dirent* readdir (int *) ;
 int realpath (char const*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ stub1 (char*) ;
 int ui_input_init (int *,char*) ;

__attribute__((used)) static void load_dir(const char *path)
{
 char buf[PATH_MAX];
 DIR *dir;
 struct dirent *dp;

 realpath(path, fc.curdir);
 if (!fz_is_directory(ctx, fc.curdir))
  return;

 ui_input_init(&fc.input_dir, fc.curdir);

 fc.selected = -1;
 fc.count = 0;
 dir = opendir(fc.curdir);
 if (!dir)
 {
  fc.files[fc.count].is_dir = 1;
  fz_strlcpy(fc.files[fc.count].name, "..", FILENAME_MAX);
  ++fc.count;
 }
 else
 {
  while ((dp = readdir(dir)) && fc.count < (int)nelem(fc.files))
  {

   if (dp->d_name[0] == '.' && strcmp(dp->d_name, ".") && strcmp(dp->d_name, ".."))
    continue;
   fz_snprintf(buf, sizeof buf, "%s/%s", fc.curdir, dp->d_name);
   fc.files[fc.count].is_dir = fz_is_directory(ctx, buf);
   if (fc.files[fc.count].is_dir || !fc.filter || fc.filter(buf))
   {
    fz_strlcpy(fc.files[fc.count].name, dp->d_name, FILENAME_MAX);
    ++fc.count;
   }
  }
  closedir(dir);
 }

 qsort(fc.files, fc.count, sizeof fc.files[0], cmp_entry);
}
