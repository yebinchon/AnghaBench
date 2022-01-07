
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int libzfs_run_process_impl (char const*,char**,int *,int,int *,int *) ;

int
libzfs_run_process(const char *path, char *argv[], int flags)
{
 return (libzfs_run_process_impl(path, argv, ((void*)0), flags, ((void*)0), ((void*)0)));
}
