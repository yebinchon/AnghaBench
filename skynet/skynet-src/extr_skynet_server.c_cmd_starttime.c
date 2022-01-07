
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_context {char const* result; } ;


 int skynet_starttime () ;
 int sprintf (char const*,char*,int) ;

__attribute__((used)) static const char *
cmd_starttime(struct skynet_context * context, const char * param) {
 uint32_t sec = skynet_starttime();
 sprintf(context->result,"%u",sec);
 return context->result;
}
