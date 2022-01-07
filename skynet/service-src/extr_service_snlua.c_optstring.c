
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;


 char* skynet_command (struct skynet_context*,char*,char const*) ;

__attribute__((used)) static const char *
optstring(struct skynet_context *ctx, const char *key, const char * str) {
 const char * ret = skynet_command(ctx, "GETENV", key);
 if (ret == ((void*)0)) {
  return str;
 }
 return ret;
}
