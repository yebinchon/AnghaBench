
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;


 int PTYPE_TEXT ;
 int skynet_sendname (struct skynet_context*,int ,char*,int ,int ,char*,int) ;

__attribute__((used)) static void
report_launcher_error(struct skynet_context *ctx) {

 skynet_sendname(ctx, 0, ".launcher", PTYPE_TEXT, 0, "ERROR", 5);
}
