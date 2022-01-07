
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {int aborted; int password_sem; int * ctx; } ;
typedef TYPE_1__ MuOfficeDoc ;


 int mu_trigger_semaphore (int *) ;

void MuOfficeDoc_abortLoad(MuOfficeDoc *doc)
{
 fz_context *ctx;

 if (doc == ((void*)0))
  return;

 ctx = doc->ctx;
 doc->aborted = 1;
 mu_trigger_semaphore(&doc->password_sem);
}
