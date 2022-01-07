
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int canceled; int zstrm; scalar_t__ fp; int buf_cond; int buf_lock; struct TYPE_4__* tabdesc; int write_thread; } ;
typedef TYPE_1__ mm_backup_ctx ;


 int deflateEnd (int *) ;
 int fclose (scalar_t__) ;
 int free (TYPE_1__*) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_destroy (int *) ;
 int pthread_detach (int ) ;
 int pthread_mutex_destroy (int *) ;

void mm_backup_finish(mm_backup_ctx *ctx)
{
    if (!ctx->canceled) {
        ctx->canceled = 1;
        pthread_cond_broadcast(&ctx->buf_cond);
        pthread_detach(ctx->write_thread);
    }

    free(ctx->tabdesc);
    pthread_mutex_destroy(&ctx->buf_lock);
    pthread_cond_destroy(&ctx->buf_cond);

    if (ctx->fp)
        fclose(ctx->fp);
    deflateEnd(&ctx->zstrm);
    free(ctx);
}
