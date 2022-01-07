
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef int uint8_t ;
struct mm_backup_buffer {scalar_t__ avail; scalar_t__ data; } ;
struct TYPE_3__ {int in_full; int in_avail; int buf_lock; int buf_cond; struct mm_backup_buffer* p_buf; scalar_t__ write_error; int canceled; } ;
typedef TYPE_1__ mm_backup_ctx ;


 scalar_t__ INPUT_BUFFER_SIZE ;
 int LOGE_ (char*) ;
 int memcpy (scalar_t__,int const*,scalar_t__) ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int dump_write_stream(mm_backup_ctx *ctx, const void *data, uint_t size)
{
    struct mm_backup_buffer *p_buf;
    const uint8_t *p_data = (const uint8_t *) data;

    pthread_mutex_lock(&ctx->buf_lock);
    while (size > 0) {
        while (ctx->in_full && !ctx->canceled && !ctx->write_error)
            pthread_cond_wait(&ctx->buf_cond, &ctx->buf_lock);

        if (ctx->write_error) {
            pthread_mutex_unlock(&ctx->buf_lock);
            LOGE_("Writing thread reported error.");
            return -1;
        }

        p_buf = ctx->p_buf;

        uint_t size_to_write = (p_buf->avail + size > INPUT_BUFFER_SIZE)
                                   ? INPUT_BUFFER_SIZE - p_buf->avail
                                   : size;
        memcpy(p_buf->data + p_buf->avail, p_data, size_to_write);
        size -= size_to_write;
        p_buf->avail += size_to_write;
        p_data += size_to_write;

        ctx->in_avail = p_buf->avail > INPUT_BUFFER_SIZE / 4;
        ctx->in_full = p_buf->avail == INPUT_BUFFER_SIZE;
        if (ctx->in_avail || ctx->in_full)
            pthread_cond_signal(&ctx->buf_cond);
    }
    pthread_mutex_unlock(&ctx->buf_lock);
    return 0;
}
