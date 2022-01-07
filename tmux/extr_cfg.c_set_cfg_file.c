
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfg_file ;
 int free (int ) ;
 int xstrdup (char const*) ;

void
set_cfg_file(const char *path)
{
 free(cfg_file);
 cfg_file = xstrdup(path);
}
