
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;


 int dsl_dataset_hold (int *,char const*,void*,int **) ;
 int zcp_dataset_hold_error (int *,int *,char const*,int) ;

dsl_dataset_t *
zcp_dataset_hold(lua_State *state, dsl_pool_t *dp, const char *dsname,
    void *tag)
{
 dsl_dataset_t *ds;
 int error = dsl_dataset_hold(dp, dsname, tag, &ds);
 (void) zcp_dataset_hold_error(state, dp, dsname, error);
 return (ds);
}
