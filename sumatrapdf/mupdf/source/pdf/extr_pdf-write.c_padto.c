
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int fz_output ;
typedef int fz_context ;


 int assert (int) ;
 scalar_t__ fz_tell_output (int *,int *) ;
 int fz_write_byte (int *,int *,char) ;

__attribute__((used)) static void
padto(fz_context *ctx, fz_output *out, int64_t target)
{
 int64_t pos = fz_tell_output(ctx, out);

 assert(pos <= target);
 while (pos < target)
 {
  fz_write_byte(ctx, out, '\n');
  pos++;
 }
}
