
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_TRUE ;
 int EINVAL ;
 int SET_ERROR (int ) ;
 int ZCP_ARG_ARGLIST ;
 int ZCP_ARG_INSTRLIMIT ;
 int ZCP_ARG_MEMLIMIT ;
 int ZCP_ARG_PROGRAM ;
 int ZCP_ARG_SYNC ;
 scalar_t__ ZCP_DEFAULT_INSTRLIMIT ;
 scalar_t__ ZCP_DEFAULT_MEMLIMIT ;
 int * fnvlist_lookup_nvpair (int *,int ) ;
 char* fnvlist_lookup_string (int *,int ) ;
 scalar_t__ nvlist_lookup_boolean_value (int *,int ,int *) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int zcp_eval (char const*,char*,int ,scalar_t__,scalar_t__,int *,int *) ;
 scalar_t__ zfs_lua_max_instrlimit ;
 scalar_t__ zfs_lua_max_memlimit ;

__attribute__((used)) static int
zfs_ioc_channel_program(const char *poolname, nvlist_t *innvl,
    nvlist_t *outnvl)
{
 char *program;
 uint64_t instrlimit, memlimit;
 boolean_t sync_flag;
 nvpair_t *nvarg = ((void*)0);

 program = fnvlist_lookup_string(innvl, ZCP_ARG_PROGRAM);
 if (0 != nvlist_lookup_boolean_value(innvl, ZCP_ARG_SYNC, &sync_flag)) {
  sync_flag = B_TRUE;
 }
 if (0 != nvlist_lookup_uint64(innvl, ZCP_ARG_INSTRLIMIT, &instrlimit)) {
  instrlimit = ZCP_DEFAULT_INSTRLIMIT;
 }
 if (0 != nvlist_lookup_uint64(innvl, ZCP_ARG_MEMLIMIT, &memlimit)) {
  memlimit = ZCP_DEFAULT_MEMLIMIT;
 }
 nvarg = fnvlist_lookup_nvpair(innvl, ZCP_ARG_ARGLIST);

 if (instrlimit == 0 || instrlimit > zfs_lua_max_instrlimit)
  return (SET_ERROR(EINVAL));
 if (memlimit == 0 || memlimit > zfs_lua_max_memlimit)
  return (SET_ERROR(EINVAL));

 return (zcp_eval(poolname, program, sync_flag, instrlimit, memlimit,
     nvarg, outnvl));
}
