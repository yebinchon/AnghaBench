
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stream ;
typedef int fz_context ;
typedef int fz_buffer ;


 int * fz_read_best (int *,int *,size_t,int *) ;

fz_buffer *
fz_read_all(fz_context *ctx, fz_stream *stm, size_t initial)
{
 return fz_read_best(ctx, stm, initial, ((void*)0));
}
