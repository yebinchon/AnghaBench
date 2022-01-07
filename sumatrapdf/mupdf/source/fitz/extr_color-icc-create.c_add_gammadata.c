
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int icTagTypeSignature ;
typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_byte_n (int *,int *,int ,int) ;
 int fz_append_int16_be (int *,int *,unsigned short) ;
 int fz_append_int32_be (int *,int *,int) ;

__attribute__((used)) static void
add_gammadata(fz_context *ctx, fz_buffer *buf, unsigned short gamma, icTagTypeSignature curveType)
{
 fz_append_int32_be(ctx, buf, curveType);
 fz_append_byte_n(ctx, buf, 0, 4);


 fz_append_int32_be(ctx, buf, 1);


 fz_append_int16_be(ctx, buf, gamma);


 fz_append_byte_n(ctx, buf, 0, 2);
}
