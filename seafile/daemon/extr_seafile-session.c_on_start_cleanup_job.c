
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cleanup_unused_repo_stores (char*) ;

__attribute__((used)) static void *
on_start_cleanup_job (void *vdata)
{
    cleanup_unused_repo_stores ("commits");
    cleanup_unused_repo_stores ("fs");
    cleanup_unused_repo_stores ("blocks");

    return vdata;
}
