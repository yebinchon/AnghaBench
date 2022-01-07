
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stream ;
typedef int fz_context ;


 float fz_read_bits (int *,int *,int) ;
 int powf (int,int) ;

__attribute__((used)) static inline float read_sample(fz_context *ctx, fz_stream *stream, int bits, float min, float max)
{

 float bitscale = 1 / (powf(2, bits) - 1);
 return min + fz_read_bits(ctx, stream, bits) * (max - min) * bitscale;
}
