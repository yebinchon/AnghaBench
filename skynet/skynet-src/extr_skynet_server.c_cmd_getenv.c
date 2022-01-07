
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;


 char const* skynet_getenv (char const*) ;

__attribute__((used)) static const char *
cmd_getenv(struct skynet_context * context, const char * param) {
 return skynet_getenv(param);
}
