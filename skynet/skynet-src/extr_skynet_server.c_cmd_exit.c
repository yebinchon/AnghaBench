
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;


 int handle_exit (struct skynet_context*,int ) ;

__attribute__((used)) static const char *
cmd_exit(struct skynet_context * context, const char * param) {
 handle_exit(context, 0);
 return ((void*)0);
}
