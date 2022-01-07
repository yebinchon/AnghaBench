
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path_prefix ;


 int F_OK ;
 scalar_t__ access (char*,int ) ;
 int memcpy (char*,char const*,int) ;
 int strcpy (char*,char const*) ;

__attribute__((used)) static int
libzfs_module_loaded(const char *module)
{
 const char path_prefix[] = "/sys/module/";
 char path[256];

 memcpy(path, path_prefix, sizeof (path_prefix) - 1);
 strcpy(path + sizeof (path_prefix) - 1, module);

 return (access(path, F_OK) == 0);
}
