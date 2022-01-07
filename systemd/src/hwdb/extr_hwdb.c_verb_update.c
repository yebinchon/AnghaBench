
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_hwdb_bin_dir ;
 int arg_root ;
 int arg_strict ;
 int hwdb_update (int ,int ,int ,int) ;

__attribute__((used)) static int verb_update(int argc, char *argv[], void *userdata) {
        return hwdb_update(arg_root, arg_hwdb_bin_dir, arg_strict, 0);
}
