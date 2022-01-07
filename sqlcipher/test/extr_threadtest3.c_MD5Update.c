
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {unsigned char* in; } ;
struct TYPE_5__ {int* bits; TYPE_1__ u; int buf; } ;
typedef TYPE_2__ MD5Context ;


 int MD5Transform (int ,int*) ;
 int byteReverse (unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;

__attribute__((used)) static
void MD5Update(MD5Context *ctx, const unsigned char *buf, unsigned int len){
  uint32 t;



  t = ctx->bits[0];
  if ((ctx->bits[0] = t + ((uint32)len << 3)) < t)
    ctx->bits[1]++;
  ctx->bits[1] += len >> 29;

  t = (t >> 3) & 0x3f;



  if ( t ) {
    unsigned char *p = (unsigned char *)ctx->u.in + t;

    t = 64-t;
    if (len < t) {
      memcpy(p, buf, len);
      return;
    }
    memcpy(p, buf, t);
    byteReverse(ctx->u.in, 16);
    MD5Transform(ctx->buf, (uint32 *)ctx->u.in);
    buf += t;
    len -= t;
  }



  while (len >= 64) {
    memcpy(ctx->u.in, buf, 64);
    byteReverse(ctx->u.in, 16);
    MD5Transform(ctx->buf, (uint32 *)ctx->u.in);
    buf += 64;
    len -= 64;
  }



  memcpy(ctx->u.in, buf, len);
}
