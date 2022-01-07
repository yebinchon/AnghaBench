
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_8__ {scalar_t__ pos; scalar_t__ wp; scalar_t__ rp; int seek; } ;
typedef TYPE_1__ fz_stream ;
typedef int fz_context ;
struct TYPE_9__ {scalar_t__ len; scalar_t__ data; } ;
typedef TYPE_2__ fz_buffer ;


 int drop_buffer ;
 int fz_keep_buffer (int *,TYPE_2__*) ;
 TYPE_1__* fz_new_stream (int *,TYPE_2__*,int ,int ) ;
 int next_buffer ;
 int seek_buffer ;

fz_stream *
fz_open_buffer(fz_context *ctx, fz_buffer *buf)
{
 fz_stream *stm;

 fz_keep_buffer(ctx, buf);
 stm = fz_new_stream(ctx, buf, next_buffer, drop_buffer);
 stm->seek = seek_buffer;

 stm->rp = buf->data;
 stm->wp = buf->data + buf->len;

 stm->pos = (int64_t)buf->len;

 return stm;
}
