
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nr; unsigned long* rk; unsigned long* buf; } ;
typedef TYPE_1__ aes_context ;


 size_t* FSb ;
 unsigned long* PADLOCK_ALIGN16 (unsigned long*) ;
 int* RT0 ;
 int* RT1 ;
 int* RT2 ;
 int* RT3 ;
 int fz_aes_setkey_enc (TYPE_1__*,unsigned char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;

int fz_aes_setkey_dec(aes_context *ctx, const unsigned char *key, int keysize)
{
 int i, j;
 aes_context cty;
 unsigned long *RK;
 unsigned long *SK;

 switch( keysize )
 {
 case 128: ctx->nr = 10; break;
 case 192: ctx->nr = 12; break;
 case 256: ctx->nr = 14; break;
 default: return 1;
 }




 ctx->rk = RK = ctx->buf;


 i = fz_aes_setkey_enc( &cty, key, keysize );
 if (i)
  return i;
 SK = cty.rk + cty.nr * 4;

 *RK++ = *SK++;
 *RK++ = *SK++;
 *RK++ = *SK++;
 *RK++ = *SK++;

 for( i = ctx->nr - 1, SK -= 8; i > 0; i--, SK -= 8 )
 {
  for( j = 0; j < 4; j++, SK++ )
  {
   *RK++ = RT0[ FSb[ ( *SK ) & 0xFF ] ] ^
    RT1[ FSb[ ( *SK >> 8 ) & 0xFF ] ] ^
    RT2[ FSb[ ( *SK >> 16 ) & 0xFF ] ] ^
    RT3[ FSb[ ( *SK >> 24 ) & 0xFF ] ];
  }
 }

 *RK++ = *SK++;
 *RK++ = *SK++;
 *RK++ = *SK++;
 *RK = *SK;

 memset( &cty, 0, sizeof( aes_context ) );
 return 0;
}
