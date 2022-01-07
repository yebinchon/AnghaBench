
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int strm_value ;
typedef int strm_string ;
struct TYPE_4__ {scalar_t__ env; } ;
typedef TYPE_1__ strm_state ;
typedef int strm_env ;


 int STRM_NG ;
 int STRM_OK ;
 scalar_t__ env_get (int *,int ,int *) ;
 scalar_t__ strm_value_eq (int ,int ) ;
 int strm_var_set (TYPE_1__*,int ,int ) ;

int
strm_var_match(strm_state* state, strm_string name, strm_value val)
{
  if (state && state->env) {
    strm_value v0;
    if (env_get((strm_env*)state->env, name, &v0) == 0) {
      if (strm_value_eq(v0, val))
        return STRM_OK;
      return STRM_NG;
    }
  }
  return strm_var_set(state, name, val);
}
