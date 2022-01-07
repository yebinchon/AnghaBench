
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int internal; } ;
struct run_request {int * argv; struct keymap* keymap; TYPE_1__ flags; } ;
struct keymap {int dummy; } ;
struct key_visitor_state {struct keymap* keymap; } ;
typedef enum request { ____Placeholder_request } request ;


 int REQ_RUN_REQUESTS ;
 int foreach_key_visit (struct key_visitor_state*,char const*,int,int *,struct run_request*) ;
 char* get_keys (struct keymap*,int,int) ;
 struct run_request* get_run_request (int) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static bool
foreach_key_run_request(struct key_visitor_state *state, bool internal, bool toggles)
{
 struct keymap *keymap = state->keymap;
 const char *group = !internal ? "External commands:" :
       toggles ? "Option toggling:" :
     "Internal commands:";
 enum request request = REQ_RUN_REQUESTS + 1;

 for (; 1; request++) {
  struct run_request *req = get_run_request(request);
  const char *key;

  if (!req)
   break;

  if (req->flags.internal != !!internal ||
      req->keymap != keymap ||
      !*(key = get_keys(keymap, request, 1)))
   continue;

  if (toggles != !strcmp(req->argv[0], "toggle"))
   continue;

  if (!foreach_key_visit(state, group, request, ((void*)0), req))
   return 0;
 }

 return 1;
}
