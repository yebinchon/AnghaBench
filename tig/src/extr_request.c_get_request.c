
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum request { ____Placeholder_request } request ;
struct TYPE_4__ {int request; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int REQ_UNKNOWN ;
 scalar_t__ enum_equals (TYPE_1__,char const*,int) ;
 TYPE_1__* req_info ;
 int strlen (char const*) ;

enum request
get_request(const char *name)
{
 int namelen = strlen(name);
 int i;

 for (i = 0; i < ARRAY_SIZE(req_info); i++)
  if (enum_equals(req_info[i], name, namelen))
   return req_info[i].request;

 return REQ_UNKNOWN;
}
