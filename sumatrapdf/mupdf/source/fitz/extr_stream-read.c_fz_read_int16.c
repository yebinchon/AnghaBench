
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef int fz_stream ;
typedef int fz_context ;


 int fz_read_uint16 (int *,int *) ;

int16_t fz_read_int16(fz_context *ctx, fz_stream *stm) { return (int16_t)fz_read_uint16(ctx, stm); }
