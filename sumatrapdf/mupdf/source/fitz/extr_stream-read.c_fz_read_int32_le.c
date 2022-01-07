
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int fz_stream ;
typedef int fz_context ;


 int fz_read_uint32_le (int *,int *) ;

int32_t fz_read_int32_le(fz_context *ctx, fz_stream *stm) { return (int32_t)fz_read_uint32_le(ctx, stm); }
