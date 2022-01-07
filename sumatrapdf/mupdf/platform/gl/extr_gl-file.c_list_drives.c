
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct list {int dummy; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int lineheight; } ;


 int PATH_MAX ;
 TYPE_2__* common_dirs ;
 char* getenv (char*) ;
 scalar_t__ has_dir (char const*,char const*,int,char*,char*) ;
 int load_dir (char*) ;
 int nelem (TYPE_2__*) ;
 TYPE_1__ ui ;
 int ui_list_begin (struct list*,int,int ,int) ;
 int ui_list_end (struct list*) ;
 scalar_t__ ui_list_item (struct list*,int ,char*,int ) ;

__attribute__((used)) static void list_drives(void)
{
 static struct list drive_list;
 char dir[PATH_MAX], vis[PATH_MAX];
 const char *home = getenv("HOME");
 const char *user = getenv("USER");
 int i;

 ui_list_begin(&drive_list, nelem(common_dirs), 0, nelem(common_dirs) * ui.lineheight + 4);

 for (i = 0; i < (int)nelem(common_dirs); ++i)
  if (has_dir(home, user, i, dir, vis))
   if (ui_list_item(&drive_list, common_dirs[i].name, vis, 0))
    load_dir(dir);

 ui_list_end(&drive_list);
}
