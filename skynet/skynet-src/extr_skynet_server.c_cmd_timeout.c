
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {char const* result; int handle; } ;


 int skynet_context_newsession (struct skynet_context*) ;
 int skynet_timeout (int ,int,int) ;
 int sprintf (char const*,char*,int) ;
 int strtol (char const*,char**,int) ;

__attribute__((used)) static const char *
cmd_timeout(struct skynet_context * context, const char * param) {
 char * session_ptr = ((void*)0);
 int ti = strtol(param, &session_ptr, 10);
 int session = skynet_context_newsession(context);
 skynet_timeout(context->handle, ti, session);
 sprintf(context->result, "%d", session);
 return context->result;
}
