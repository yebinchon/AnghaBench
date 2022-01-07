
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int icS15Fixed16Number ;
typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_byte_n (int *,int *,int ,int) ;
 int fz_append_int32_be (int *,int *,int ) ;
 int icSigXYZType ;

__attribute__((used)) static void
add_xyzdata(fz_context *ctx, fz_buffer *buf, icS15Fixed16Number temp_XYZ[])
{
 int j;

 fz_append_int32_be(ctx, buf, icSigXYZType);
 fz_append_byte_n(ctx, buf, 0, 4);

 for (j = 0; j < 3; j++)
  fz_append_int32_be(ctx, buf, temp_XYZ[j]);
}
