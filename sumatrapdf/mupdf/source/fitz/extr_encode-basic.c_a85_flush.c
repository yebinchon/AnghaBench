
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a85 {unsigned int word; int column; int n; int chain; } ;
typedef int fz_context ;


 int fz_write_byte (int *,int ,unsigned int) ;

__attribute__((used)) static void a85_flush(fz_context *ctx, struct a85 *state)
{
 unsigned int v1, v2, v3, v4, v5;

 v5 = state->word;
 v4 = v5 / 85;
 v3 = v4 / 85;
 v2 = v3 / 85;
 v1 = v2 / 85;

 if (state->column >= 70)
 {
  fz_write_byte(ctx, state->chain, '\n');
  state->column = 0;
 }

 if (state->n == 4)
 {
  if (state->word == 0)
  {
   fz_write_byte(ctx, state->chain, 'z');
   state->column += 1;
  }
  else
  {
   fz_write_byte(ctx, state->chain, (v1 % 85) + '!');
   fz_write_byte(ctx, state->chain, (v2 % 85) + '!');
   fz_write_byte(ctx, state->chain, (v3 % 85) + '!');
   fz_write_byte(ctx, state->chain, (v4 % 85) + '!');
   fz_write_byte(ctx, state->chain, (v5 % 85) + '!');
   state->column += 5;
  }
 }
 else if (state->n == 3)
 {
  fz_write_byte(ctx, state->chain, (v2 % 85) + '!');
  fz_write_byte(ctx, state->chain, (v3 % 85) + '!');
  fz_write_byte(ctx, state->chain, (v4 % 85) + '!');
  fz_write_byte(ctx, state->chain, (v5 % 85) + '!');
  state->column += 4;
 }
 else if (state->n == 2)
 {
  fz_write_byte(ctx, state->chain, (v3 % 85) + '!');
  fz_write_byte(ctx, state->chain, (v4 % 85) + '!');
  fz_write_byte(ctx, state->chain, (v5 % 85) + '!');
  state->column += 3;
 }
 else if (state->n == 1)
 {
  fz_write_byte(ctx, state->chain, (v4 % 85) + '!');
  fz_write_byte(ctx, state->chain, (v5 % 85) + '!');
  state->column += 2;
 }

 state->word = 0;
 state->n = 0;
}
