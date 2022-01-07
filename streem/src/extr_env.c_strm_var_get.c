
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int strm_value ;
typedef int strm_string ;
struct TYPE_3__ {struct TYPE_3__* prev; scalar_t__ env; } ;
typedef TYPE_1__ strm_state ;
typedef int strm_env ;


 int STRM_NG ;
 int STRM_OK ;
 int env_get (int *,int ,int *) ;
 int * globals ;

int
strm_var_get(strm_state* state, strm_string name, strm_value* val)
{
  while (state) {
    if (state->env) {
      if (env_get((strm_env*)state->env, name, val) == 0)
        return STRM_OK;
    }
    state = state->prev;
  }
  if (!globals) return STRM_NG;
  return env_get(globals, name, val);
}
