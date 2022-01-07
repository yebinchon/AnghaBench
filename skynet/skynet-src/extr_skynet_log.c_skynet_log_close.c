
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_context {int dummy; } ;
typedef int FILE ;


 int fclose (int *) ;
 int fprintf (int *,char*,int) ;
 int skynet_error (struct skynet_context*,char*,int) ;
 scalar_t__ skynet_now () ;

void
skynet_log_close(struct skynet_context * ctx, FILE *f, uint32_t handle) {
 skynet_error(ctx, "Close log file :%08x", handle);
 fprintf(f, "close time: %u\n", (uint32_t)skynet_now());
 fclose(f);
}
