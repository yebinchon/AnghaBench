
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_info {int request; } ;
struct key_visitor_state {int dummy; } ;


 int REQ_NONE ;
 int foreach_key_visit (struct key_visitor_state*,char const*,int ,struct request_info const*,int *) ;

__attribute__((used)) static bool
foreach_key_request(void *data, const struct request_info *req_info, const char *group)
{
 struct key_visitor_state *state = data;

 if (req_info->request == REQ_NONE)
  return 1;

 return foreach_key_visit(state, group, req_info->request, req_info, ((void*)0));
}
