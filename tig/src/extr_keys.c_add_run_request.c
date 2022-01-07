
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run_request_flags {int member_0; } ;
struct run_request {struct keymap* keymap; struct run_request_flags flags; int argv; } ;
struct keymap {int dummy; } ;
struct key {int dummy; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;


 int ERROR_OUT_OF_MEMORY ;
 scalar_t__ REQ_RUN_REQUESTS ;
 int SUCCESS ;
 int add_keybinding (struct keymap*,scalar_t__,struct key const*,size_t) ;
 int argv_copy (int *,char const**) ;
 int parse_run_request_flags (struct run_request_flags*,char const**) ;
 int realloc_run_requests (struct run_request**,size_t,int) ;
 struct run_request* run_request ;
 size_t run_requests ;

enum status_code
add_run_request(struct keymap *keymap, const struct key key[],
  size_t keys, const char **argv)
{
 struct run_request *req;
 struct run_request_flags flags = {0};
 enum status_code code = parse_run_request_flags(&flags, argv);

 if (code != SUCCESS)
  return code;

 if (!realloc_run_requests(&run_request, run_requests, 1))
  return ERROR_OUT_OF_MEMORY;

 if (!argv_copy(&run_request[run_requests].argv, argv))
  return ERROR_OUT_OF_MEMORY;

 req = &run_request[run_requests++];
 req->flags = flags;
 req->keymap = keymap;

 return add_keybinding(keymap, REQ_RUN_REQUESTS + run_requests, key, keys);
}
