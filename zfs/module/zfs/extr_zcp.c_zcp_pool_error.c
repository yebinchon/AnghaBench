
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zri_result; int zri_outnvl; int zri_state; } ;
typedef TYPE_1__ zcp_run_info_t ;


 int ECHRNG ;
 int SET_ERROR (int ) ;
 int ZCP_RET_ERROR ;
 int lua_pushfstring (int ,char*,char const*) ;
 int lua_settop (int ,int ) ;
 int zcp_convert_return_values (int ,int ,int ,int *) ;

__attribute__((used)) static void
zcp_pool_error(zcp_run_info_t *ri, const char *poolname)
{
 ri->zri_result = SET_ERROR(ECHRNG);
 lua_settop(ri->zri_state, 0);
 (void) lua_pushfstring(ri->zri_state, "Could not open pool: %s",
     poolname);
 zcp_convert_return_values(ri->zri_state, ri->zri_outnvl,
     ZCP_RET_ERROR, &ri->zri_result);

}
