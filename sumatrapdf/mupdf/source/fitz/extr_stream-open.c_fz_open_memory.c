
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_4__ {unsigned char* rp; unsigned char* wp; scalar_t__ pos; int seek; } ;
typedef TYPE_1__ fz_stream ;
typedef int fz_context ;


 TYPE_1__* fz_new_stream (int *,int *,int ,int *) ;
 int next_buffer ;
 int seek_buffer ;

fz_stream *
fz_open_memory(fz_context *ctx, const unsigned char *data, size_t len)
{
 fz_stream *stm;

 stm = fz_new_stream(ctx, ((void*)0), next_buffer, ((void*)0));
 stm->seek = seek_buffer;

 stm->rp = (unsigned char *)data;
 stm->wp = (unsigned char *)data + len;

 stm->pos = (int64_t)len;

 return stm;
}
