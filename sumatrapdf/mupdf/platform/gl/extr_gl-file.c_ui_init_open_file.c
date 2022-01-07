
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* filter ) (char const*) ;} ;


 TYPE_1__ fc ;
 int load_dir (char const*) ;

void ui_init_open_file(const char *dir, int (*filter)(const char *fn))
{
 fc.filter = filter;
 load_dir(dir);
}
