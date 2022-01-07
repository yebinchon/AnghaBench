
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a85 {int n; int word; } ;
typedef int fz_context ;


 int a85_flush (int *,struct a85*) ;

__attribute__((used)) static void a85_write(fz_context *ctx, void *opaque, const void *data, size_t n)
{
 struct a85 *state = opaque;
 const unsigned char *p = data;
 while (n-- > 0)
 {
  unsigned int c = *p++;
  if (state->n == 4)
   a85_flush(ctx, state);
  state->word = (state->word << 8) | c;
  state->n++;
 }
}
