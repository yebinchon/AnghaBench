
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_context {int dummy; } ;


 int skynet_error (struct skynet_context*,char*,char const*) ;
 int skynet_handle_findname (char const*) ;
 int strtoul (char const*,int *,int) ;

__attribute__((used)) static uint32_t
tohandle(struct skynet_context * context, const char * param) {
 uint32_t handle = 0;
 if (param[0] == ':') {
  handle = strtoul(param+1, ((void*)0), 16);
 } else if (param[0] == '.') {
  handle = skynet_handle_findname(param+1);
 } else {
  skynet_error(context, "Can't convert %s to handle",param);
 }

 return handle;
}
