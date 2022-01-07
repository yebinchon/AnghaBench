
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nvlist_t ;
typedef int int64_t ;
typedef int fmd_hdl_t ;
struct TYPE_5__ {int tv_usec; int tv_sec; } ;
struct TYPE_4__ {char const* ci_uuid; TYPE_2__ ci_tv; } ;
typedef TYPE_1__ fmd_case_t ;


 int FMD_SLEEP ;
 int FM_CLASS ;
 char const* FM_LIST_SUSPECT_CLASS ;
 int FM_SUSPECT_DIAG_CODE ;
 int FM_SUSPECT_DIAG_TIME ;
 int FM_SUSPECT_FAULT_LIST ;
 int FM_SUSPECT_FAULT_SZ ;
 int FM_SUSPECT_UUID ;
 int FM_SUSPECT_VERSION ;
 int FM_VERSION ;
 char* fmd_fault_mkcode (int *) ;
 int * fmd_nvl_alloc (int *,int ) ;
 int gettimeofday (TYPE_2__*,int *) ;
 int nvlist_add_int64_array (int *,int ,int *,int) ;
 int nvlist_add_nvlist_array (int *,int ,int **,int) ;
 int nvlist_add_string (int *,int ,char const*) ;
 int nvlist_add_uint32 (int *,int ,int) ;
 int nvlist_add_uint8 (int *,int ,int ) ;
 int nvlist_free (int *) ;
 int zed_log_die (char*) ;
 int zed_log_fault (int *,char const*,char const*) ;
 int zfs_agent_post_event (char const*,int *,int *) ;

void
fmd_case_add_suspect(fmd_hdl_t *hdl, fmd_case_t *cp, nvlist_t *fault)
{
 nvlist_t *nvl;
 const char *code = fmd_fault_mkcode(fault);
 int64_t tod[2];
 int err = 0;





 (void) gettimeofday(&cp->ci_tv, ((void*)0));
 tod[0] = cp->ci_tv.tv_sec;
 tod[1] = cp->ci_tv.tv_usec;

 nvl = fmd_nvl_alloc(hdl, FMD_SLEEP);

 err |= nvlist_add_uint8(nvl, FM_VERSION, FM_SUSPECT_VERSION);
 err |= nvlist_add_string(nvl, FM_CLASS, FM_LIST_SUSPECT_CLASS);
 err |= nvlist_add_string(nvl, FM_SUSPECT_UUID, cp->ci_uuid);
 err |= nvlist_add_string(nvl, FM_SUSPECT_DIAG_CODE, code);
 err |= nvlist_add_int64_array(nvl, FM_SUSPECT_DIAG_TIME, tod, 2);
 err |= nvlist_add_uint32(nvl, FM_SUSPECT_FAULT_SZ, 1);
 err |= nvlist_add_nvlist_array(nvl, FM_SUSPECT_FAULT_LIST, &fault, 1);

 if (err)
  zed_log_die("failed to populate nvlist");

 zed_log_fault(fault, cp->ci_uuid, code);
 zfs_agent_post_event(FM_LIST_SUSPECT_CLASS, ((void*)0), nvl);

 nvlist_free(nvl);
 nvlist_free(fault);
}
