
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** readdir_raw (char*,int ,int *) ;

char **stb_readdir_files (char *dir) { return readdir_raw(dir, 0, ((void*)0)); }
