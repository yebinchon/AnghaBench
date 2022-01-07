
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** readdir_raw (char*,int ,char*) ;

char **stb_readdir_files_mask(char *dir, char *wild) { return readdir_raw(dir, 0, wild); }
