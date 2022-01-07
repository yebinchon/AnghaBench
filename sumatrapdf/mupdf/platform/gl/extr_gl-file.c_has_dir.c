
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int icon; } ;


 int PATH_MAX ;
 TYPE_1__* common_dirs ;
 int ctx ;
 int fz_is_directory (int ,char*) ;
 int fz_snprintf (char*,int ,char*,...) ;
 int fz_strlcpy (char*,char const*,int ) ;

__attribute__((used)) static int has_dir(const char *home, const char *user, int i, char dir[PATH_MAX], char vis[PATH_MAX])
{
 const char *subdir = common_dirs[i].name;
 int icon = common_dirs[i].icon;
 if (subdir[0] == '~')
 {
  if (!home)
   return 0;
  if (subdir[1] == '/')
  {
   fz_snprintf(dir, PATH_MAX, "%s/%s", home, subdir+2);
   fz_snprintf(vis, PATH_MAX, "%C %s", icon, subdir+2);
  }
  else
  {
   fz_snprintf(dir, PATH_MAX, "%s", home);
   fz_snprintf(vis, PATH_MAX, "%C %s", icon, user ? user : "~");
  }
 }
 else
 {
  fz_strlcpy(dir, subdir, PATH_MAX);
  fz_snprintf(vis, PATH_MAX, "%C %s", icon, subdir);
 }
 return fz_is_directory(ctx, dir);
}
