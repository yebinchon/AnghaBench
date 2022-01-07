
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tmp_dir_internal (char*,char const**) ;

int var_tmp_dir(const char **ret) {






        return tmp_dir_internal("/var/tmp", ret);
}
