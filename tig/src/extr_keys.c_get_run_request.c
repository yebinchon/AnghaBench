
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run_request {int dummy; } ;
typedef enum request { ____Placeholder_request } request ;


 int REQ_RUN_REQUESTS ;
 struct run_request* run_request ;
 int run_requests ;

struct run_request *
get_run_request(enum request request)
{
 if (request <= REQ_RUN_REQUESTS || request > REQ_RUN_REQUESTS + run_requests)
  return ((void*)0);
 return &run_request[request - REQ_RUN_REQUESTS - 1];
}
