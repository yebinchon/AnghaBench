
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
struct TYPE_5__ {int ID8; } ;
typedef TYPE_1__ cmsProfileID ;
typedef scalar_t__ cmsHANDLE ;
typedef int cmsContext ;
struct TYPE_6__ {int* bits; scalar_t__ buf; int * in; } ;
typedef TYPE_2__ _cmsMD5 ;


 int MD5_Transform (scalar_t__,int*) ;
 int _cmsFree (int ,TYPE_2__*) ;
 int byteReverse (int *,int) ;
 int memmove (int ,scalar_t__,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static
void MD5finish(cmsContext ContextID, cmsProfileID* ProfileID, cmsHANDLE Handle)
{
    _cmsMD5* ctx = (_cmsMD5*) Handle;
    cmsUInt32Number count;
    cmsUInt8Number *p;

    count = (ctx->bits[0] >> 3) & 0x3F;

    p = ctx->in + count;
    *p++ = 0x80;

    count = 64 - 1 - count;

    if (count < 8) {

        memset(p, 0, count);
        byteReverse(ctx->in, 16);
        MD5_Transform(ctx->buf, (cmsUInt32Number *) ctx->in);

        memset(ctx->in, 0, 56);
    } else {
        memset(p, 0, count - 8);
    }
    byteReverse(ctx->in, 14);

    ((cmsUInt32Number *) ctx->in)[14] = ctx->bits[0];
    ((cmsUInt32Number *) ctx->in)[15] = ctx->bits[1];

    MD5_Transform(ctx->buf, (cmsUInt32Number *) ctx->in);

    byteReverse((cmsUInt8Number *) ctx->buf, 4);
    memmove(ProfileID ->ID8, ctx->buf, 16);

    _cmsFree(ContextID, ctx);
}
