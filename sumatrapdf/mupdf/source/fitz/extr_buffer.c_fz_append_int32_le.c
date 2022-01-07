
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;
typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_byte (int *,int *,int) ;

void
fz_append_int32_le(fz_context *ctx, fz_buffer *buf, int x)
{
 fz_append_byte(ctx, buf, (x)&0xFF);
 fz_append_byte(ctx, buf, (x>>8)&0xFF);
 fz_append_byte(ctx, buf, (x>>16)&0xFF);
 fz_append_byte(ctx, buf, (x>>24)&0xFF);
}
