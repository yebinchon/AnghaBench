
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_2__ {int started; int solo; int start; int active; } ;


 int FZ_ERROR_GENERIC ;
 int RENDER_FATAL ;
 int RENDER_OK ;
 TYPE_1__ bgprint ;
 int fz_throw (int *,int ,char*) ;
 int mu_trigger_semaphore (int *) ;
 int wait_for_bgprint_to_finish () ;

__attribute__((used)) static void
finish_bgprint(fz_context *ctx)
{
 int status;

 if (!bgprint.active)
  return;


 status = wait_for_bgprint_to_finish();
 if (status == RENDER_OK)
 {

  return;
 }

 if (status == RENDER_FATAL)
 {

  fz_throw(ctx, FZ_ERROR_GENERIC, "Failed to render page");
 }
 bgprint.started = 1;
 bgprint.solo = 1;
 mu_trigger_semaphore(&bgprint.start);
 status = wait_for_bgprint_to_finish();
 if (status != 0)
 {

  fz_throw(ctx, FZ_ERROR_GENERIC, "Failed to render page");
 }
}
