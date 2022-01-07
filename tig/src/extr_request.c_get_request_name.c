
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum request { ____Placeholder_request } request ;
struct TYPE_3__ {int request; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int REQ_UNKNOWN ;
 char const* enum_name (int ) ;
 TYPE_1__* req_info ;

const char *
get_request_name(enum request request)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(req_info); i++)
  if (req_info[i].request == request)
   return enum_name(req_info[i].name);
 return request == REQ_UNKNOWN ? "unknown" : "run request";
}
