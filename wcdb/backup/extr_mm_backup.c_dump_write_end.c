
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int in_finish; int buf_cond; int buf_lock; scalar_t__ write_error; } ;
typedef TYPE_1__ mm_backup_ctx ;


 int LOGE_ (char*) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int dump_write_end(mm_backup_ctx *ctx)
{
    int ret;


    pthread_mutex_lock(&ctx->buf_lock);
    {
        ctx->in_finish = 1;
        if (ctx->write_error) {
            LOGE_("Writing thread reported error.");
            ret = -1;
        } else
            ret = 0;
    }
    pthread_mutex_unlock(&ctx->buf_lock);
    pthread_cond_signal(&ctx->buf_cond);

    return ret;
}
