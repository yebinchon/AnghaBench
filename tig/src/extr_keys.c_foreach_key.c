
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_visitor_state {void* member_1; int member_3; int * member_2; int member_0; } ;
typedef int key_visitor_fn ;


 int ARRAY_SIZE (int *) ;
 int foreach_key_request ;
 int foreach_key_run_request (struct key_visitor_state*,int,int) ;
 int foreach_request (int ,struct key_visitor_state*) ;
 int * keymaps ;

bool
foreach_key(key_visitor_fn visitor, void *data, bool combine_keys)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(keymaps); i++) {
  struct key_visitor_state state = { visitor, data, &keymaps[i], combine_keys };

  if (!foreach_request(foreach_key_request, &state)
      || !foreach_key_run_request(&state, 1, 1)
      || !foreach_key_run_request(&state, 1, 0)
      || !foreach_key_run_request(&state, 0, 0))
   return 0;
 }

 return 1;
}
