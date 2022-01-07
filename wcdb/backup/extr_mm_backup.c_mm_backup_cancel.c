
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int canceled; int buf_cond; } ;
typedef TYPE_1__ mm_backup_ctx ;


 int LOGI_ (char*) ;
 int pthread_cond_broadcast (int *) ;

void mm_backup_cancel(mm_backup_ctx *ctx)
{
    ctx->canceled = 1;
    pthread_cond_broadcast(&ctx->buf_cond);
    LOGI_("Backup operation canceled.");
}
