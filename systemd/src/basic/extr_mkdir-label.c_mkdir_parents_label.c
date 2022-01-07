
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int mkdir_label ;
 int mkdir_parents_internal (int *,char const*,int ,int ) ;

int mkdir_parents_label(const char *path, mode_t mode) {
        return mkdir_parents_internal(((void*)0), path, mode, mkdir_label);
}
