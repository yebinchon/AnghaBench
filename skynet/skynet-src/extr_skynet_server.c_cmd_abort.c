
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;


 int skynet_handle_retireall () ;

__attribute__((used)) static const char *
cmd_abort(struct skynet_context * context, const char * param) {
 skynet_handle_retireall();
 return ((void*)0);
}
