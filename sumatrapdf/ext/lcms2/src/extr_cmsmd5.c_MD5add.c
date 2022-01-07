
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef scalar_t__ cmsHANDLE ;
struct TYPE_2__ {int* bits; int * in; int buf; } ;
typedef TYPE_1__ _cmsMD5 ;


 int MD5_Transform (int ,int*) ;
 int byteReverse (int *,int) ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static
void MD5add(cmsHANDLE Handle, cmsUInt8Number* buf, cmsUInt32Number len)
{
    _cmsMD5* ctx = (_cmsMD5*) Handle;
    cmsUInt32Number t;

    t = ctx->bits[0];
    if ((ctx->bits[0] = t + (len << 3)) < t)
        ctx->bits[1]++;

    ctx->bits[1] += len >> 29;

    t = (t >> 3) & 0x3f;

    if (t) {

        cmsUInt8Number *p = (cmsUInt8Number *) ctx->in + t;

        t = 64 - t;
        if (len < t) {
            memmove(p, buf, len);
            return;
        }

        memmove(p, buf, t);
        byteReverse(ctx->in, 16);

        MD5_Transform(ctx->buf, (cmsUInt32Number *) ctx->in);
        buf += t;
        len -= t;
    }

    while (len >= 64) {
        memmove(ctx->in, buf, 64);
        byteReverse(ctx->in, 16);
        MD5_Transform(ctx->buf, (cmsUInt32Number *) ctx->in);
        buf += 64;
        len -= 64;
    }

    memmove(ctx->in, buf, len);
}
