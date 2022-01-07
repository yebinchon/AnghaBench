
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int libzfs_handle_t ;
typedef int boolean_t ;


 int pool_active (int *,char const*,int ,int *) ;

__attribute__((used)) static int
pool_active_libzfs(void *handle, const char *name, uint64_t guid,
    boolean_t *isactive)
{
 return (pool_active((libzfs_handle_t *)handle, name, guid, isactive));
}
