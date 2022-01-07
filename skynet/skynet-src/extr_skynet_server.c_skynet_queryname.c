
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_context {int dummy; } ;


 int skynet_error (struct skynet_context*,char*,char const*) ;
 int skynet_handle_findname (char const*) ;
 int strtoul (char const*,int *,int) ;

uint32_t
skynet_queryname(struct skynet_context * context, const char * name) {
 switch(name[0]) {
 case ':':
  return strtoul(name+1,((void*)0),16);
 case '.':
  return skynet_handle_findname(name + 1);
 }
 skynet_error(context, "Don't support query global name %s",name);
 return 0;
}
