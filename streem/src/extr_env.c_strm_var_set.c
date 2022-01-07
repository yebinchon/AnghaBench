
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int strm_value ;
typedef int strm_string ;
struct TYPE_3__ {int * env; } ;
typedef TYPE_1__ strm_state ;
typedef int strm_env ;


 int env ;
 int env_set (int *,int ,int ) ;
 int * globals ;
 void* kh_init (int ) ;

int
strm_var_set(strm_state* state, strm_string name, strm_value val)
{
  strm_env *e;

  if (!state) {
    if (!globals) {
      globals = kh_init(env);
    }
    e = globals;
  }
  else {
    if (!state->env) {
      state->env = kh_init(env);
    }
    e = state->env;
  }
  return env_set(e, name, val);
}
