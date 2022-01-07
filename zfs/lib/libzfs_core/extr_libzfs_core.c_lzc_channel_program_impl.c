
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int ZCP_ARG_ARGLIST ;
 int ZCP_ARG_INSTRLIMIT ;
 int ZCP_ARG_MEMLIMIT ;
 int ZCP_ARG_PROGRAM ;
 int ZCP_ARG_SYNC ;
 int ZFS_IOC_CHANNEL_PROGRAM ;
 int fnvlist_add_boolean_value (int *,int ,int ) ;
 int fnvlist_add_nvlist (int *,int ,int *) ;
 int fnvlist_add_string (int *,int ,char const*) ;
 int fnvlist_add_uint64 (int *,int ,int ) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int lzc_ioctl (int ,char const*,int *,int **) ;

__attribute__((used)) static int
lzc_channel_program_impl(const char *pool, const char *program, boolean_t sync,
    uint64_t instrlimit, uint64_t memlimit, nvlist_t *argnvl, nvlist_t **outnvl)
{
 int error;
 nvlist_t *args;

 args = fnvlist_alloc();
 fnvlist_add_string(args, ZCP_ARG_PROGRAM, program);
 fnvlist_add_nvlist(args, ZCP_ARG_ARGLIST, argnvl);
 fnvlist_add_boolean_value(args, ZCP_ARG_SYNC, sync);
 fnvlist_add_uint64(args, ZCP_ARG_INSTRLIMIT, instrlimit);
 fnvlist_add_uint64(args, ZCP_ARG_MEMLIMIT, memlimit);
 error = lzc_ioctl(ZFS_IOC_CHANNEL_PROGRAM, pool, args, outnvl);
 fnvlist_free(args);

 return (error);
}
