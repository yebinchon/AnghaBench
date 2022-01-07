
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arc4 {int chain; int arc4; } ;
typedef int fz_context ;


 int fz_arc4_encrypt (int *,unsigned char*,unsigned char const*,size_t) ;
 int fz_write_data (int *,int ,unsigned char*,size_t) ;

__attribute__((used)) static void arc4_write(fz_context *ctx, void *opaque, const void *data, size_t n)
{
 struct arc4 *state = opaque;
 const unsigned char *p = data;
 unsigned char buffer[256];
 while (n > 0)
 {
  size_t x = (n > sizeof buffer) ? sizeof buffer : n;
  fz_arc4_encrypt(&state->arc4, buffer, p, x);
  fz_write_data(ctx, state->chain, buffer, x);
  p += x;
  n -= x;
 }
}
